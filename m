Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9D7639
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720402583; cv=none; b=qRF7/vfb2GLqoIzCTuiQ/NyEbZtCois5FyVZsCiRKShlRhGx5/rFDNAcwM3x/3Wg7EZDgSlnpUV7gMAnmKi+5ts3nfmVI3pDrY4vo2yeXspH5Dfefs6ZPNzZ2K59iLSm5hW6ZaOuyGsmIcjl7X0uFT1d/5EIeIdSZbxs+W4HLbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720402583; c=relaxed/simple;
	bh=/GG3GJFOUzoXPiBkAH7+y/T8R7z1iFOQJkt7ChmGC6M=;
	h=To:Subject:From:Message-Id:Date; b=ELldpVm7D3AXCpDP6iKWxnpI3oaP6qoCf88/ga28gPlbcQIYmIX8CWbw/agdJjW3z0xc3N+Mfhyv2y8NakxgRvjViI7uvI3gHdVTd2ncgthzv3Vm2z6VU9MLPp2H5kfeRzF6IsFWzTLkp3y7RTbrgiO2aKyV0Ipcg5uWxnb7t5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLgNUmF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLgNUmF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6547C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720402582;
	bh=/GG3GJFOUzoXPiBkAH7+y/T8R7z1iFOQJkt7ChmGC6M=;
	h=To:Subject:From:Date:From;
	b=fLgNUmF5uqvRKLIgbHIy6SdfqVNxc2cvS9zVtt+eUY3PA3WTkUaUkJNrHETbgjs3s
	 D2H30Ja/bByGKyLqvMWCzxf2eoB5z8E30AvXC9DkkBBw0MA73RiOIz32JnG3T0zoMV
	 yrPwkg1PoMpx8DgbPCol5xYA7uTphaE8NaKPbgNea8nY5oEGLTUSPzY84zPswqSFZn
	 SdkCkBiiR4oPpXVBD6nN1daa6R6KOBZaBif+nZOcmqEsYj1vc3Xtbf23jZ3Rv7s1iJ
	 2FV8J/kssw4da2rgvdHFLrBmMWsX0Kxe37HUUwfCobhi+AH79S3SDSojcjCrCGPrMX
	 LGC18fKPbq3Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF86EC38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040258277.23352.16776049103258492171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa79ff11b5a61916b1894101e1e60cb23131db801202fbf370e4cb88166c626
Date: Mon, 08 Jul 2024 01:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720402582
