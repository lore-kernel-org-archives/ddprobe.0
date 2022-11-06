Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5779185F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70944C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667731854;
	bh=SrS8pe+7XtxEkWHtYokKHbR5Nk6S1EF+Oj0ohjYAOLc=;
	h=To:Subject:From:Date:From;
	b=GiaLvlL1vOBI1Plsq62C9e/iIUlVsnywB/lMtpR228VghtC+iA14nDtCOjSvYWSOJ
	 h8rog6Eks+EALVd6+abfHWOUpT4/Ksi1N8jmEFg5FiZEzb8na+brWioQFlipo+WGAY
	 Bm24fEdZgFYDG3Sg0Cl/FsLZJF0MUyTNuFkDwy2Gy97jrnnnQS/7KEvjrNuKFF83J/
	 MgDeOajeuCgHBnrhpRRYGJsxg92yiKYI0/CPwJOeTIubmuRhCHyHLnsfGrQpgIGZYT
	 st7AilW5P70MQusANoV+KbJE+RwlD9vcZhaLY9yDOqJxM3MG7rVKieHW02T2px1U9A
	 ElTXBx5GBYewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F90C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166773185434.10442.14855130526990705702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80237bdcd60dd51bdb6dd78ba4c74ed484d0c38d2aa43ab46339007ee60ae8ef
Date: Sun, 06 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667731854
