Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6E780C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D4EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665853253;
	bh=7YfNQJy3QMYd6I615O+MUHIWsjdwAv6+fTLml/rm7Ao=;
	h=To:Subject:From:Date:From;
	b=O/rrYaOm0+svKq3Yb6a0eui8z13wytAxoheqGFdRJ0el0r+rJeTml7A0duSr2iKJy
	 1pOhbkuR1q9f1OK81ea/EBDYy1ICxE55hOSdsAAXikvzi/8//nEtpoQ38JZ2fEDSu5
	 RWzo4vvKmVCKM1nULkSQMz/hXaw+2+72GLPvqAfU7Majf5vYaE2loVOmQPGM5bo/lR
	 Bhqu2Wqp0Ywj+xwQsygY12sKEBIK9xm2QMgzXV/vnIzrVcSxMxBAG/7X5NWNWr+N8i
	 2vuVie8kUsjVxD/Mes7hGNNTqTm5s2oLI1VAzfHMw/H2o2YJ/df7kw1rAIR3Kh1X22
	 b5rmF33Ot1AQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536AFC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585325333.28316.6530705673408856542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13247d6d3646d2aee0bd63aa13d5f1a0596de009abb223585cef33018022782
Date: Sat, 15 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665853253
