Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F7C3932EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785679834; cv=none; b=UNGW3PxxdXcxrTaDWxeFlyT+Mzq402U+MQiZNm61cveeNBD7aGJpppGQlpBIPcOSGcrlvR+spR99EFkIJyDJBm3U21XmY6nAdfSps1+Qu2dmNQbgTh65ymNGv5EgBneDHxpLfY8aJTG2MQoNxFFTlcYxJ+hB9lrFBWsXyFftQvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785679834; c=relaxed/simple;
	bh=0sEr2cRH6lxhTWwQmCiQ/WuFiJASA//V7kTHPiPZ2gw=;
	h=To:Subject:From:Message-Id:Date; b=IWjW83bCVVz0+psZvAq7Oq+JW9NFOqAkHvEPq8YKJsbFcKSw3s30ESoIUcXRO31RPl/p/Fs5NQaQP+MJEtpJLFLEomJU6MbLlEAMQ2i/gSnUKOM1W3dPxVfgawGoReEhkwkz2x7dHAspCwpLdkiYKudP6xzF/9pxowHeAzMCBcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgQPmTac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgQPmTac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9260C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785679833;
	bh=0sEr2cRH6lxhTWwQmCiQ/WuFiJASA//V7kTHPiPZ2gw=;
	h=To:Subject:From:Date:From;
	b=MgQPmTacoMx1PeBM2dWf93jjI9NVXPPO87RC3QJsKgG1nF/BF2DapJFngeCPt/sTE
	 mqkldFN66++wrWpecTfml39mimRTmL2OAoR84BVQ7TbQ03Za2MnrSG5+pMXFPNSEbx
	 a20fgwpnmgaq7LhngcrDvOgdWuIIiitIGbl6ewIoHstD/W/6g+PH46hQzXgbMYS51n
	 bYWz7idRauTy0+AEjReOtm0K1huV8fmhujXBQW4/1LXnxM5G00AoQeA83dJB5NPsng
	 zWsNFfAC9isZ8MKn6gYkQj6xbrpPR6BEzCY6jcimHdhUZUWCkF+XO6hnmGG9ehvxYA
	 xW6zEePkuCkrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82F0C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567983368.10502.12047696494542510757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497020cbd350a3722d0803ca9a4ab455f82f4767a6153639f61ea8fa5ea38dcf
Date: Sun, 02 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785679833
