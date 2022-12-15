Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FE62F35
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8629EC43392
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671134487;
	bh=jMT3b0h/8Pa2kLuSo7+prcBqxfg7SiOm7GxggQCF8Vg=;
	h=To:Subject:From:Date:From;
	b=HVEyH4Pm8yauOFyRKJTWQ2gjWhMyeT8dR0EbhMCK+p5TLgcfySMbFujkBdwMaHAOA
	 AmjgrnN+2bczdkls/XE7sHa8WmYU6MQbVrWJgRy7oam6MrBRoBGPr5fOOejitwiMzo
	 AHVRozrU6BdwYtOJl7Q3or5UdEdBuK5o43V+56hRm4plV3lq0DtDPfmkoVl5BiLi66
	 5FJs8KcD/bQPGBxxH1+Whfz3IJ2rlkxpst4tkSxa4Ng4R2+rkB2PZ254y89TVYejFs
	 8EVFnlqAB7DjOj9J+cOwxQV6+KzWzho6VBenB908qmMcd6BGwcq6rw+c96UEohjZIZ
	 5989sj48P1k/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71223C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167113448745.18072.126999873282005316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499f606aa9a85f5b9cd73b7e14f70d43cefd62f533d16078dd90a0068a07680c
Date: Thu, 15 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671134487
