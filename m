Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3250C644
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0PycPRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A095C433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698458896;
	bh=VtkIWgfk04zKPEGL3FmwONyu5+5KlIFa/EQtATEjb1U=;
	h=To:Subject:From:Date:From;
	b=X0PycPRJZ++8JMsOtWyhbuPtfj/1KUeo64LsiFLZm8ewxKaQRH/lxBRq+XcmMW+yg
	 4WRbeNdYWWJkgNu3bWEiO+7dqcKUme5MJSr4VBdrgEBqHpBC3B0OTBPfwOD2Ye+8ZL
	 PtWV1f9Pt5gd+9b3R7EfNL0u/zOTFIIfEd32Fwcs5cUB5c0tDLBg0o/1sos2G/wjkO
	 dx1j005PE03566s2bDwXRC8cRXxs7oAejtOOnpxHmyudqauI3Dr+klaOMA1PRSSdep
	 5D3+TPP19juJaUyaB/DuTUvEkxbylB8WtEEIh41NrGf9zllAkkflZwejxABue7kseq
	 EX7JO8WT4d4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD81C25B67
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169845889639.13764.11808518414251330414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3af3a0427e65e75cc73bc7c72ee142bc896536288c7903ce8feaa1c241ea75c
Date: Sat, 28 Oct 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698458896
