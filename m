Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380768F4B
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 17:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BCEC433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 17:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675185185;
	bh=UIZ6iE39qBE8AxWPy9KuMvSvEf41qiPBpNjRU4BkuTs=;
	h=To:Subject:From:Date:From;
	b=V/vdo9+SfTdlBIMur3g5fAB780zTTSLPu7tlvKXv+baV70iFS2q/6OwnZ4m4EojPg
	 KYivQvEv1yD2USGH1FlQgfsYiRr1elcDVEm9lExB1+7Q51ZjFKk4zdA0bCgRGwa1V4
	 RqkJ/7Qg7LPhMZsHBOdXbMZENe1POpy7IW7asIvPdnppbhi95TefG0s2wgrAGVg9sQ
	 K6oSpJcl2CmKHpXhfr3ldAnihKKaL3X0pFgLwo4ITivaLjVyOd7QBrbMl0jh/m0VaS
	 R7WS8Z+qohDxkSaiyE3WLXkYIvck52m2GX5N9WyEmvi2TKNnyx8kJSptE4+cQqT6xv
	 NtV7xsUi27TaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD706C636CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 17:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167518518576.10519.4847596146285006548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25434246f1d82674be1ba61ee758094f85e3d413a11c115d087fbf20905d0d3f
Date: Tue, 31 Jan 2023 17:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675185185
