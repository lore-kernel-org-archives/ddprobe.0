Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2101BF04
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 22:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC86C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 22:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690409528;
	bh=cuygr/dlwJVqCkR1U36DfqxM9djJd76WyC5hcrlcozY=;
	h=To:Subject:From:Date:From;
	b=fxDGUqu2e1EoG76tRPI/FSw3EfYpQJgHym18fpxwKsFAQutvjdc7tVpkNQS1xU1T8
	 UdRns+DVf+u1/dmVIKlCsteMkEBghIDkBgIWs60AqDKrCUtsr75E+glVNkqZRPSGRR
	 m5NGB7IlJGCkSMhSlTlw8J1v/OEYBotXvbBq3nMjJy8n0QBDXOJqInAr/9TWyFp54M
	 qdJ4ocorTBw2qjCb4128iYadZUpTIrEYEkG87bfg3v97ZP/uUE3VEzbtslPLXN2H01
	 PQBy24ThpeHy7rncexz7Evj12/9cVCMtEvRX2MaRyPx0KUZbzpx7YQRYzxbVnVYUdJ
	 okT5QYKW7gBFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9D3C0015E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 22:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169040952868.32621.8953948334119867200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052e0f9b97167e0d20698262568d7618c5c73d2c02e904f57d29dd201e456cdf
Date: Wed, 26 Jul 2023 22:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690409528
