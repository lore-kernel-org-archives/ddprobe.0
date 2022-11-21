Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F2979C3
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CE2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669060854;
	bh=ey35cS2lTxV1SccwDqhkw+hnZw5obsTZescs9SVWjLM=;
	h=To:Subject:From:Date:From;
	b=rPnwArEmgTAY/Glga6VUopzcbv/IMJUIg5I+XB8NtLwEBAqrDESsPAJgleVoHlNCV
	 d+Hh6QofiFBint9jQlO77fzFqRsZwvse+JxYxJMIZZgJUWr4OO+z3eu106b6+z+vRf
	 TjMp6sTk1YVCOW9T4KIN0KZnRFNp/tBVQ342xI87Ynkr/ZVqBeJe4UgS/WLJbAlQaW
	 T6Y03oxeyuy20WOEaLPZ+GCSIoJ0vt/hKkmDLIL45xPkYKjBMilJszZeMXoUJ7sQPt
	 RS3oqS+phbDmXMDUyE/XaXt0d+BKuExN+zGSuSqknRRyT/JLaP4OtjRMmY6T5InwXK
	 V6P0dR/sspjRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EC9C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906085432.26886.17095497989326744923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe5f596c61b5af6cd9fa844ffaff689bb45986cc5737ba13b558927696f891b
Date: Mon, 21 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669060854
