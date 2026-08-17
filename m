Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DD61CD2C
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786933834; cv=none; b=VTIyeSH7/UfE/lFbsND/nlHQjlXG1Wwn0CBqn5DP2JGS5PfE+72b8uC3DpP3kzyndW89pNwTYgIjSPJfKxX53gXO/lSo3Fd1jYPM3n9qfjPqaFF5jIgyeQ7LApXmKkNlN6vy2Asq69E+paU0qorqnv48KHkKvFb9BLDJMUSmNcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786933834; c=relaxed/simple;
	bh=mnQjPKPSqMfNQhYzA7a0QitdYOK34/qG9HV8yRgMEoQ=;
	h=To:Subject:From:Message-Id:Date; b=k74CHJ5KgvwS57W6DBVBHFL/FeM7s1W4ueAfFNonOfeQOItUId8tQHpCdrN5ENaW3hgFLw8WUQsLz8RXvd3uPspewzbo8akcyDnPpJJ14RKcjEC6FZW/edu090qdY+xfgJWkpEMbv9pWERkZL6ciy/Ibu3ru8hCvLt6D+0R6c3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGVG5tLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGVG5tLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E51C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786933833;
	bh=mnQjPKPSqMfNQhYzA7a0QitdYOK34/qG9HV8yRgMEoQ=;
	h=To:Subject:From:Date:From;
	b=LGVG5tLVSH+B7nvo3LUKsDBUTc/I02pWTCZ17Xmfkxmqt6pQs2kTAy+hAi8YXHwnQ
	 V5dbkSFuylM2Q2wxIDktsAged0Oj44g6/8cdtnZHyqj5sYLi47emuZBf2spqSTmDd4
	 pa09HnvLOFaUqna8IKPbJ/zf9n7ZZcXYFZlWJYGRu7f5biz/2RQM+BJYm4ouAgo4NA
	 3igVm56jo9KMhVVQk1epyup9V9AQO5aXtRtkCjNCagVyfQh3SSDdrYdBEW8lES3h/Y
	 +ZRO+D3rmwbcNwB7MR6WhTreY0NeMlfGCSz9tZgqYdiS76EGpZMd59H9O9HzXfE3oV
	 Jp/zGXEthQu4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF788C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693383369.19378.3961893429436968415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a139ba9f06a061027068941828ce6d834475b678fd56f00a4b8eb11f1a3340fd
Date: Mon, 17 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786933833
