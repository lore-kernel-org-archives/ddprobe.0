Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A778833
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6B2X+tZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699927696;
	bh=kpBSeGLS8Oucu7WFXDwbMCrSBV/HTZvV7DpNUKM+s7E=;
	h=To:Subject:From:Date:From;
	b=o6B2X+tZcggjsiQCBj2v2jxfDOX24pbJP4j2sqZQCIfy/Uu5xsaPNkFHpO8ZMCmDx
	 BxGYN3higJKn4jacGzea+xECs80kZ7hlDuy3dtKvTTAijAKpXTKWR4ht4ymMtUKWKn
	 k5Hgon7Peuwcef8EhEFM5N2r0KKbm4fPLl1AjX/IMP17vCi93evs63SAhyUdVKgMLX
	 /8+IMtaqdpqzIC7ajt4CfEQjkI++CPfyWr4KF9oHuQ4aP4Djznb3LnGdlCQUrfehNu
	 7MFqm2DcosFggamfyKbOzugne+uYE77QwDX6sXPLdbi/GXddubm0dfvzsOUJ3PCK1g
	 0YMaSudxr1g+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79A2CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169992769648.13290.2252850629052811979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301a90be028ad779710a45f686db576664eaa1ca04f34d1203b3997994dd10e9
Date: Tue, 14 Nov 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699927696
