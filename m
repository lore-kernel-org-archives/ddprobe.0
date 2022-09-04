Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC517E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7488BC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662283253;
	bh=3O3pwjr8+Q9yBR/UUIjg7HRPI7a15DSdT7VIE9iPG+A=;
	h=To:Subject:From:Date:From;
	b=MLmUvLgNd0Cmt8bmBhrPOZ8KDFztO4Ls7UDY5prUGIeGCLapZ/1HUTaTG3RuMjdAQ
	 FKE29MtklU74iG6G7PCm+KyexN1U/7NLEyF5Izogu2Tw8p3fTBCokXCDKMvQRdWWwH
	 O+VNfCz1OZ5Fs4gvO2QltYJVi5PtCDXPvwM2xHsdMP7aA4mNaBofVYFr8iB08skvrQ
	 ghvlK4v5Xtd3a0VkW69XS1ecoW6Vt7Q86KK4w+1w0dQFfGqJo6To6jGYULrzlsxbVI
	 2YSeQzQTXv5gJhpYRHnmNz76kUHIOZH0+0zyHuR9PzcBNeRJgqJq7RwstWLg5PqUE7
	 7AW6QZbHDzZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59528ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166228325332.19614.12063253603374877078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78859d25c04d52cd2b9ee398af159a9cb0b340b9841396d196cd1f779b3e2598
Date: Sun, 04 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662283253
