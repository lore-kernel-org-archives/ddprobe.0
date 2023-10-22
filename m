Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EC136A
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xmuf4Ygu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E5E0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697950696;
	bh=o+CcBCvlpz+IkLsetDO/n4PB1RqkfeAUUW+8Qcm/ZBY=;
	h=To:Subject:From:Date:From;
	b=Xmuf4YguOhjaz9SxXYuks5KU2Zq7goZNpx+Zem0qncDiQMmG9QvMhn3MXYP73ktyr
	 7V4LnxaP9g6Za/ZtmyYg6b2v5shC68mS72pkoMg5C2B3pUfdfDsn4gM2rzKtfaoBpW
	 pPCoE51Y2czvgNr3lHyx+armr+72NO65M8Q2VLjpa4QpNGijok8d/HzZtN3bowEMwn
	 LijnmDZJqsNij2Rysb2W3rTj+g3WjRMvMdO0JoXjGvWCnhMsA1AFkOlxy70kHFPJZC
	 aJqsh8Fg5z/0kuoThiHKAPXDjUmyaIq3ugE5/Y9xkTxzFPq1IM6Ezk80Dw9ykcNMT2
	 oROZxvgm/SJng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 705E7CDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169795069645.19984.18422000215558741044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5444337a046a63fa1a80c6648c64d6184ed0fbaafe2f0639be725ce54d71898
Date: Sun, 22 Oct 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697950696
