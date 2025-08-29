Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372271F03FB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756448394; cv=none; b=eeBmYrZwIZqb/9+DRQZIFHgn2XgNfvbPD6s1h6AJ7S3ioKftyThOmaRCc6Jre3Hb17rtEWiX2FPMOdx1+c+PEsTHrxFYgVi2uflg2a6gYcB2dOu+kqBYP45h2hvEgr39daYZXdbeUg+Gnwgcjo6LqWgQNLDscUzR/+wL9+YuAgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756448394; c=relaxed/simple;
	bh=3MmCNSNYHXfnsyrAb4phj7HWNhbbHyKAMmJNgVm3woU=;
	h=To:Subject:From:Message-Id:Date; b=TyjH3GyPYXmm+JwlyL/dOC1vVMmfh0ZYg2h04fmhaKlfQKlgx9gdOEC8d27SZ18Mk8XhQzB+/jZvYivlZe5XvOPV0kI5SzAKlBrFN/jy754upM/xrPCSEjPT3OJFcX2rj/RRzX4S5274nQOLdZcLYJ3mG6ZkOP/vgpTuXPx1WdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn4bgI2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fn4bgI2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A159BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756448393;
	bh=3MmCNSNYHXfnsyrAb4phj7HWNhbbHyKAMmJNgVm3woU=;
	h=To:Subject:From:Date:From;
	b=fn4bgI2eUpY2Eggkqu829D4i2HNBEli3YdynBVNKBWpyLROrZdLSc01/o5S8RM874
	 J9qGu/fzFKWPhPh1FFba63zyTCg3gPWk3ft82b9NsFIEJ5zTIR4yLZBm+dciHIgKLa
	 y8hewgZiNUW0Q9oeOsaG6+5WrGM3X/BNtn6QfZ8FG2CsFtiaxzbHWdhy8HeW1mT5Ok
	 bVIO5uyGdhLKPUMIB3xD2dtuTELm/eYDlCwPU0UNsKodQjzGx6D8dGPYLxSGF2UCCY
	 G6qA7A48qFUNzRr3CC+NbV56bTGn//DRHJWqTa5e2xyqlYDX2Wx7holmatPKm89XH5
	 v6pfYh938B8ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAEAC8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644839357.15646.14389572200403513232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf9a38e179b494bbe7aabe1d733b00d9b7508f6186d6a5a32441a682be25d56
Date: Fri, 29 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756448393
