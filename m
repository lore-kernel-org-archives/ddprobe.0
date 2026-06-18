Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E73F1F5437
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781741794; cv=none; b=BnVNIlXPBDkb1P5zHuWa4/Olp/JLTxRGW0/DFG84eBuW9DrLaKuW66KRNucZDnCRgMCypqKPfAHp5DS+m0y99ilP9QzmE36RDCgr0XqkETkvdJHahlJHqwTjFtzyzO3QJ8RKwGPUtQRlZeTE7OUv2PBKk5k59Uo840vbqAcU+Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781741794; c=relaxed/simple;
	bh=FAHoEEy61gr6841VPT0ifVGjJd4gzHqb8i6/tm+bWwM=;
	h=To:Subject:From:Message-Id:Date; b=MkHsUPojYpgz2poMn0KYbqucQdSIwwVLKesHi2VtT1lpQQh64PB2XDfLF7ZFcCDPcOEBzo7rP8UUdH4zv2NDsJbJ4VPK5H6gxxnIevdhIJ1lsqs2/5+HwbV6RSqK8W9eEbG63oniAyCVO0dxnb/KUnUzu+r5hVwX5ldEbDZbVwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfBoMS2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfBoMS2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA635C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781741794;
	bh=FAHoEEy61gr6841VPT0ifVGjJd4gzHqb8i6/tm+bWwM=;
	h=To:Subject:From:Date:From;
	b=HfBoMS2IVvfAsUBaHupKrvh7gGFEe4JoDqAdRYHFaBivkKMP0/VbEwQQcTExSLjaQ
	 cooSEAfpXkCH4nErTf0L9+fzm1X9AbsS7asRN3r7Ylrut5W68cELFFThrU5VQsaV+5
	 VdSE3C17qblfYZt/LS9ioMSRmxcG9yeZBwIohYj6RIcRXPam3JNhAp1jBtcj7fQfH6
	 PFsq+7wR20+HRieVCVLNAgpnT7wAgEOHKCY7XJGFOOXizDISMPkLwuKqHyfWGU8XEj
	 cEEc1JkpKoTDVtTVeWCOw9XOQ3+3plQKvx8+OGirvaY1fmY31M1vwp9B9uNHiKCb5z
	 qVTHpapCeNpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BA1CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174179374.7660.14134168265177644615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad77ee09bb7d45743dd4d228756dbabe1ed8de00f9558cef3f71f87826dce75e
Date: Thu, 18 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781741793
