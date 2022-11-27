Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7CAB2CA2
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC5FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669566654;
	bh=Ba+aK3c0y3RQXReI+NR0lLLYkonDHhsAeftTCQR6MwE=;
	h=To:Subject:From:Date:From;
	b=IgY9IXJy8zeI8Bhs/X7uOnfD/nS5xf0antxrUdwHmE215tHibEvXNPgAm0x/cfOtj
	 ai6Gurs9se6g5dtxOKMhHLg4eslvSR2QQTijw1FNkxoBVvq8jwtoqz1dfgApRFyps0
	 rVgq/MrHSyT+Yqs8oBl0YyM89RM4Xi1qIjq4ILh1cH41ruJRQolFROBQ9+nuMBu6Pa
	 hkBKKZ+wh430Xc9lPIC9SiUQ5J+bZNdv0ZNtjMHmYmE/4xOQu17UP1Zqxf8XWtqGDV
	 35odfzAv7g5X7Lq/NEApYHoXvpauuVSb97pVfQc3e27Ajm8nouisQEP7wCn1PADzhf
	 vrngoShREnhQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53393C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956665433.22821.3089473530852153654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5e3ba41a1a65a603edb1d1c02b467b0dbcc4fec49b9f5e54c194d63286620a
Date: Sun, 27 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669566654
