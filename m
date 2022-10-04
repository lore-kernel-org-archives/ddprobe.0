Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C576F3D8A
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7680FC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664898053;
	bh=MSQYxiMOsJCoxsRZqryaUQukseqc7o0QGTRFaGT+zBI=;
	h=To:Subject:From:Date:From;
	b=dBLXNx9HwKA84v4sJpeixOuTKrMZ1ikxbgLlA1LNFJefCXmClrN1P8DSydFvrXwVo
	 5lAb8EmyAhd4g9umMsGlY9uAsRO9aIXQfRSyfPFOCyfYBG3+iGXINODiyXlOACJT5Y
	 cnLAI6BLONYunuRTkqrA9XlAOyTvxgSFpWgJMBA1hRmZnJGoKxDjcH3AZTl56ma1yz
	 JJ+5ck99XiiDO04NlRcDOKjUuLL/TiS00g2iIyIWASNbMgT1MmmXBd1FvLByK1Djfc
	 nEqfGcZuDc7yKWfNRxBWxozIO5Z8NGPBPShlEz4R6khgLCltf1roPzyjLY+gcMemmA
	 MTxXpto0Fp4+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA81C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166489805334.29132.14857386926442910097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97f9abcaaffc8d1972b481546d833266430d0c39a188ee3750d3abeb0a845a3
Date: Tue, 04 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664898053
