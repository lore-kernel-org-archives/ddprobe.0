Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CD112C544
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749220794; cv=none; b=teAc0pbCAmvBPSZQ8mGJd9KJlWatnvCIBqz/8MLJIWi7HmbjRx8nGHYqptzg9bw6lC2DCJuhostCZmRL4Lf4kPKCfURHk1zQLEVbhtVYg9eCtmhyaDmOT/8hHjOdXYtXr+3VFTHflDfssna3paFXirLDPVkuFa8/1SXhQ9biwRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749220794; c=relaxed/simple;
	bh=NgOE39rruyVOHLwyjs3BPF+/CX8GBxVWWTGtkPuWCqY=;
	h=To:Subject:From:Message-Id:Date; b=VVP0Gt9chiMBAm4TaTbr5bZ1aHU6+v2vp2WzSj3iVxj3DEvQ7Q0QzFC3W745xHI0v3+OPqW/GdtZjRqxSeZPD9z3sN3vpM519v3SqA8IzTvV/OnT5+/hh/wniMI3ptYN2zXwBtiGAD7F9+60vv2RxnDQPWDGvKv17TvE/Us/R58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nS4vxftP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS4vxftP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28E9C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749220793;
	bh=NgOE39rruyVOHLwyjs3BPF+/CX8GBxVWWTGtkPuWCqY=;
	h=To:Subject:From:Date:From;
	b=nS4vxftPveP4ZLioFylPQDoHT+NN9U/hTVhGqG+tlSi6u52iLdfb1LNd2Z3Y9iIEb
	 otPAsCjCQlIjq570eL8x/GtYtnhOjRnPyRueUf/rdZC1yc4hzEJug1IfIVl12aK2sK
	 6GTVDO9jX8VNPqulDvyRq18Wx80B/sIERQtbz64zZKxDSt5DfkHV8NmZCngD3kYCIY
	 +D/CmJZVxklH98H35mi7MXGyKG+IWmgQmGs+2Afx8zaPUt9B+vuu34bSnvZtY8ivMw
	 6Tlb5ZoqQCDLqYcm/fIh4oFWk5sjoouDx8naIk1OQk3TUaV2dQQBpgN4UoGfLbYqrL
	 eFKqhAX9g6QVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E5C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922079358.30560.6557768550831998103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eecf3a96152afb294e379dc496bc5c339b76ec81401206ed15cc2c9ddb1e1abe
Date: Fri, 06 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749220793
