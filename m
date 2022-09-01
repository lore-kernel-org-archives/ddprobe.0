Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD76566EE
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC4AC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662034253;
	bh=Cf+wNNlaeJ7AL7I74xCZqxzPQ25PaKvaf0hOV1TeLtw=;
	h=To:Subject:From:Date:From;
	b=pTEQzFn1g2EqVCClNp7HlS/8W8xod+aVqhvpavyag/jO764DtBhsvPFNorZ8OagI6
	 6JNYewAsFaN75QY6gN+HH0dVSOXY2YiwsrvtnOUNK0LD9dPmOrevsDFU7Inkhau633
	 e1ecWF3Ih3QP4Nu5ZeRwuxeDhRvLO4/RKWFgi2JMBgsW1Ng0z+FuY8PdQ9Ad+jImF0
	 BKz1U4UQZvx2UsELSVJnb3IYZ0vgH+0mK+CcfaPzCiNwLgfsolmoY+vPCO8Hk09Ixn
	 L1fSGKmJvfErg/goVBVJ75ghjcPu9U0fGsCkcCtTcD8a7sb+/N8nIaiHR28XpuW5c3
	 meeyQFCgeH1Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5548DECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166203425333.7177.7858830825405846961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a2a2a0bdf2bf7e039b4ca9de773e5523fc036c101fbc8d9e0b1036d59467b4
Date: Thu, 01 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662034253
