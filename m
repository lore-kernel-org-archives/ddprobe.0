Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D341D6DC5
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748368794; cv=none; b=Vpwd2m7198NiJxlurEIn97a9iTy1gvpcGoqYz8PRTwY4qCzFwVpEkPUdABFKVcDCTQdI+yYvM+le2nu4OLLxCieEx6BRGgMjBWgT/4Pn5uEULtAn4MVVljU+47aK0+zCPRvS4dbnjRSvH7hlJnwnMXDkPFpmu/kBxOlDWFsuxBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748368794; c=relaxed/simple;
	bh=L+oB2423sul0QdtrCho0C94J6ZuHyNJNAfBOIIK5xDg=;
	h=To:Subject:From:Message-Id:Date; b=Y6/O0qC3q/0b5FqEvlEuyj43Xi3urgy8thOrGAcN81eZdpqWTLKptkoHD+qFayaUFxuGSA1F5G5PqpeqodcoMmWnFSFf7EXm1uzyimJ9PSSTdBv8eIsC/lomiAR7QrCk5NMJ1yJkDjE5x9SGZFdjr2n5BrRoPHOcH4mQZd9Y6OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZf8Nf8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZf8Nf8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A5CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748368793;
	bh=L+oB2423sul0QdtrCho0C94J6ZuHyNJNAfBOIIK5xDg=;
	h=To:Subject:From:Date:From;
	b=CZf8Nf8c1C6wlIimuFgtvhBoK7+TKhVxr9WyLoFT4wsnWfR1yPNy6ZDOTQVin8aIL
	 UsojcuLxC1XV/SMNGcK5yPa5EePR4FBGFYCceKz0xaKmhDcjWUc0LXNIkMCBHelObc
	 U2zlOxPs5mS49FS5oWiNsQuD82zBqOjOiVegsFqV1Hp7Kopxcq9pcxIfGzUpp9c1oV
	 XLHoqkuKuKYKR4wASFPxX4wH6VWUKC5Uk4XT2Ur3kcd3f7NaLqdtacpHBsqCygtp0S
	 8dGNbXkbyFWmMkixEC8s6m/xnsfSPvAZpSFVfaLqOG2QaJmaYmhSs7LSWKlsfdEUU9
	 L0ffjTtQ4qADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940EAC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836879359.8673.3383675483547548655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db25fccfa0c420605abd21fa53ba3a72eb8ce6aee64d9ac0f4c051263abd1a2
Date: Tue, 27 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748368793
