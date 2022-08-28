Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B780B190
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D057C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661677252;
	bh=i/6qn/QJMr8KI1OwMdZ6c+07smwGQnTG59hIlugaVLc=;
	h=To:Subject:From:Date:From;
	b=hen874ubu7t6ihz5EjdtuGVZO1WxMsXIGbFbXBhmAodqottdt8NRu/oAGakZF4sHt
	 5LAIihoEIoM8Nkt+loKkVY/uhJDqZ5QzTpS+/mul+tmBa4a/dZJlWzuaEX4VHAyQJN
	 ngVraihcSFi0ejl05puvOpFU1tF2wl8cU6wG2rRmsQitDfKJIAwYlqo8HDbprDIciW
	 XSc/5TQ8W0aSYxF5lCJDcV2EmKDzfZQ3Eh73RrUsOR+Zg6VMzb9RWWBFiRwojqo2Te
	 ZhaK8uOBUX48hjaPSLBHZ/YoKR8zdzw4h6qwwUslxcTb1rhXgpCShJDhebjowC2GTr
	 E93yt0xydcJgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53249C0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167725233.29849.16470664060613434936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2f1c66d0b07536dceeb46216b9be2aaea2ce7521a476c51eaf9476bdd75ac3
Date: Sun, 28 Aug 2022 09:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661677252
