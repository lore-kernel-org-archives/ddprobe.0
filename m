Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777E9623
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 02:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB288C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 02:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693707248;
	bh=XMFvGaniI8deEsYxcY8z/KjESHg1Yr9AFYnW9s0cEVE=;
	h=To:Subject:From:Date:From;
	b=fmC5uy4i66FTNsrYzPmlbJNlC87ICLlzJnujvTEHfKcoF+ZrIH0Zv2dEdaYakIFW5
	 eo5i8QWkqNlEVATc21UHEcKlihQtTSuQxG/L2aen3ZGojTkxjwQHTjgGaKsDHq/Raw
	 BzkWMW4ZGNoTrHfphorMhw3nB/JG9Sl1j/d4BG2+cJWpgaun77CxbOlNNN5s5Smtyg
	 kPFOk0qnKYT94j9r/UcVdVf/0/O+O08skU/AgxzbAYllORpoEeJCr1UYTptACp17/s
	 86p6j1oh9AbPeRJ8odpV4oGMTM8Xg+hbvlavJL9RuQRweWinU2uFJASYcuhXb8Go01
	 abE3EospiKA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90C5C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 02:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169370724873.3447.4266173607605389079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c358aef26dff5564221d98a772663e8bf5b433cba805a0b71fa2fed041c1db
Date: Sun, 03 Sep 2023 02:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693707248
