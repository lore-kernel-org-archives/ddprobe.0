Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380A21FA244
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734794754; cv=none; b=cR23ZC6DxR4gV0pa7RNPU71R/C3Necoe/NuLCEpn71R6XilXfUnWdSOZ8JPdQKgkXMRz1SI+TPb7aTMaZGzDnRb9VVgm5RpSplbd6rf+YJUjJhgpMV3ke9CYfjXc2gVGfXmbIEjdLW88XkudKFT6e78umIPba0TWVMDCMx0bauA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734794754; c=relaxed/simple;
	bh=MbuT/5zo1huoKejf4WxIJCBtyg41Blkl2XAb9QjGX0I=;
	h=To:Subject:From:Message-Id:Date; b=RYccN2hXkCTz4udhGduT3/e8bvcEU5j1XGAfR2Q/NmhZ1TGvTueGYBDSRR4x+UmGfhMctuOdHddp0G9zwdvATtI7MERhkkDMkiFWAfb8K8QXspls7HyCFuJD6iQLIySSNPwGPRe9E87tHFCJoSZ0vasuUzcEbw2+8WnVRGIzlJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPMq7fHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPMq7fHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4CBC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734794753;
	bh=MbuT/5zo1huoKejf4WxIJCBtyg41Blkl2XAb9QjGX0I=;
	h=To:Subject:From:Date:From;
	b=YPMq7fHlnZ2OJdAK3XC1ZyXqTkNLJUtP60GXVObGNDaKPyw2YVepWDYOvCSIA12+Y
	 O/BUIWuPaexNV7LyKLgxDv1gCUmIrxcB6y+Tc531+BxCjizxTo8dO+NUwewK2GVdaq
	 /dBRmwcEHOR42V9v2VoN7QaUepPaIJTdaXVrSuZnh7Bk2TjQUPesVdsCwFGhC7wXaz
	 dUa2q/d77sfiJi4MnJOekZK5iQ5YxrS4e4NIAMTGYxFcPbVHgPDDU6lxCfNGkj53LE
	 m3nW/ELGcKFqUBli9Vv4Cd2YGf2w6bTEdI06Pu9G0q6ZdmtY5NmGn/Dw+LrgBh4EZb
	 ScJc6SIakSBEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA7E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479475359.1835.13174180460103633120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba125ae01befe5e8c17484772fa3ff049e21ec890b00d6b0a75940336518a20e
Date: Sat, 21 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734794753
