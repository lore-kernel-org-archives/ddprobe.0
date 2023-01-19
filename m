Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDA43D6E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 809DCC433F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674163287;
	bh=/++KC3WjrSXcqZl/o10GCBkSJM89bV+ts7HH3VDcSgE=;
	h=To:Subject:From:Date:From;
	b=FBVbb5Yge9n5aLR75w1zATwmjaRfk0jZCMXjCpMIolcDge8Wfwd65e76s0KuE4usK
	 FpTzA6AHCvV1XlQtcC7U9N/NPgW8pXEvzjCdKEC62Dh3nPhcTwzjIJ9Sxf9LhGQqlk
	 6b0ldHxJm8RGhVptGdSsi057lckOYdZHwWGqxrGPetJ2p/LrOTLrlHK1A7Zc4en2lS
	 uNm4MgXSUpAX87wf6UF7ngb6CHHCnfo51fbpg8Fn1DrQ/5RBQA0Pu2nI7aa1FfVCTB
	 W8KChIUiG3fEk4RgvfRhJgun0fJf3aypFTfucf+bQAR9/w1p6dAs8kNVJOA7qybQ04
	 QBU1NNGAM09XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ED6C004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167416328740.9550.11186706879297375993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b76aa64630ccdc64d3b171fdd1b0db0ace2405998d7108ba0a209b9b2944d9
Date: Thu, 19 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674163287
