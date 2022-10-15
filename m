Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73D73205
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710D7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665874853;
	bh=8hzHTk9rgl/ADq97tr98pgyTwIMJ8Hh+EfPTtSnydjg=;
	h=To:Subject:From:Date:From;
	b=m/EGoyjsVOXIP00VwKuT0B+dR1c9Op8rs4ODI1cl+AWqdH1wd8PIgT3Vf/p/T/VAT
	 U+iCV/o1jBVbzr1XRErh8FG430wJVPh/kc/bHKhM4OocZCyuVj4wh+lMqDSlCriJDN
	 UpQ62jKMbxLZZipi6W5K3wMCBvK3V2Gya1DGkPp858KI8MUBKQacxeWjAhd3pWAlr/
	 1+vZahdIkqtoNWVqmPHqEz7Oz9Emer0UhN0dmPNkV8e0po2REuGCpjYFq3gna6X6L3
	 u2gHgKdUhN5T7kDOTo35nd7vZVp7WMAdD25SMhx2PLb8B6/xHfWm5WgNhNPPNnPwRv
	 3uPaVwfM/G9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540D5C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166587485332.16416.4775852253053749913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce8506a145ffb0ed556b3cbde6bc1e428743830998fa37219bdede14558dd3c
Date: Sat, 15 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665874853
