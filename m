Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C19D7E3
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 11:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF972C433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 11:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684063686;
	bh=Jtpi4GyctMAAPVlv+715mxyIJNI3l8GrKC9biUZ9Alk=;
	h=To:Subject:From:Date:From;
	b=YaynERH3UOY1IrtNYcvHaOLp2WXre7bqh92S4e5KCKv8uhhSLcSjyFi5blWBxtlCw
	 deYZHbEbCScG2k3J7+gJXT9h283a+e3WYOczsOS3MZI2C8i/Ckntk4tzsQCNqga++M
	 oXM5csDQA0ozmx8aFRCdI7USDotKEjBibU4EbeVqYMOZF+zkNXj/x/hvh7Ygx7e8LA
	 DJibvamLVe2Rdp699rXrADKPr1lBDNTOVb1kcdgJ/Wez88zYK9vmT54gTEUtbArUoJ
	 +8jBzV9p6/BS2+IC2EJJf7frobDQ6o5w2JBpxajRhLWSsyA10yMOZ33wmizrmmA2JA
	 8ihBWPCjBU0Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63A7C77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 11:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168406368579.23272.7141221506263512710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a693efe612f1fbd476f6de5e772cbab68cff41a88448a76fdc2a86188fb4644c
Date: Sun, 14 May 2023 11:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684063685
