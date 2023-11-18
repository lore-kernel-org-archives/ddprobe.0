Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA16D2E5
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D34Cg7zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8537EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700284696;
	bh=9nER7KEfYU2IIEVHoj+e4AgsAC16TRDlmm74TMod16I=;
	h=To:Subject:From:Date:From;
	b=D34Cg7zpg5rVlKyV6Zk+mvdzm9sB9UDG2kIN/FHGNEUQmRH32BGy9EUqb2ykxlbXN
	 LmEjxwdIc2EQMME2hijS/fObtTGiAd+7ph5M1symD4eYpk/LSBXAUaHIhuD+2e0JCz
	 WG3VxreeHd2fYcsqGoF/Bsb/YJ0ZuFofrJQb17Pjx02Bw2Si8M2dsBsgtqvmEEPLOR
	 dxi+QGrlgqG06+WGGwbC4Hk8kyuc9ViNToR7dniz0dOyK0fJEtQpnm2lxE94RgiCsb
	 bby2PWZPkMSxPNj7sgaaBKlEA+7IFdacry5SKTADR7YNr73TTI/24DO87COuhdZ5YA
	 ztBaiqkjZCtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CC6C54E76
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170028469640.17922.17693389655115221176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f562d58c1944af8fe144163b8972a4fa535eea93364c2831c37841c094aada
Date: Sat, 18 Nov 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700284696
