Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446602D3A75
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782793114; cv=none; b=NSNlo7+W3q5qVDC+ofNztVATYGn0FYl9ngg67UGwHbYUkQmo5eC5n8fJ+1Zy2ioM54UinCEtcU7ERtzZbek4g1uqf674ud6SG9KLg8HteirDaU9d97DNlRQ849YsRD8LzLLE+9Z5kP4kVi8OH3XY6pXu69zAViQvBXpabMA004E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782793114; c=relaxed/simple;
	bh=uR7ZDN5P6W8Yy/O1IYCvU9XJmgL/vTElVbFU2dL273E=;
	h=To:Subject:From:Message-Id:Date; b=o99EDK8dTmB4R9Hm6CE5cXcX2Nq63eaRO2FZGXKqk6IVPwFo5ZzefvaIcTwPBPMvexxa5wn9zIbjoktHCktJXmZ8i1U/cUjrwaCeejcXjoFYmC/dU2LkyfkkiG1Lj/E9TwBcVShPCyRgm3FVNehnGpeRhuugqrIyRM8ai0v+xeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFR1W9CL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFR1W9CL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C550BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782793113;
	bh=uR7ZDN5P6W8Yy/O1IYCvU9XJmgL/vTElVbFU2dL273E=;
	h=To:Subject:From:Date:From;
	b=hFR1W9CLr4yoJ+0mwNN2qzZ3YUf3pDt/NJvgUZInDn+mqBxswkWGT/l2MuzV4hWsR
	 7CsaoH4XlWkbcaNMgmfPcYAjEZ7oQRG89//yJhm7CPfxcCJCP6B1LqdBEdnEar6DDm
	 3wsCIvJa+umnF/xiBd5hs6u7MwsELnEZcD3zXkNGc5F1y3FWaFyxAXl4748wwVa8HE
	 KZbCPq7MBWjIe7Cll51xsAXCl2GegqXk5DDbtbJ9UpJzr2BbPlNoYR5xqspzrM6Gy4
	 ae24PNayyaYp80zBa9UMHldUJmyv0DUo/5i10jod6609cjKWZumZWEuQfPHrGgr97L
	 9e7Rkc1vcOTDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE0AC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279311369.27546.9742672716893251322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e00a201ebb449fbda10d079176251cafa4addd048ec04accfff9a76a2ea646
Date: Tue, 30 Jun 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782793113
