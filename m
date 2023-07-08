Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD2853B5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF3DEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688825829;
	bh=HUByUoYF1v8bNsBvJkkJ71STN5Usd1rmzdIPLwMbeqQ=;
	h=To:Subject:From:Date:From;
	b=fRiu93/Xl/GMw4KGEVVAmY9805Oaua7ypXctDWyMYCrkGWSAUymfcozseQeGj++6Y
	 IyXt/JeeSy1/vItDvgUOQXiya3y/Kqb4h7A2AN7T2LT9qrzSsIqIbpPoz+BddwOiOR
	 +GhZcy11wjrUELiKTRc1B1hL/XIw8qsXfmjocLTuqRFfxvqd58IpqqF+W4yMKBn7Qi
	 QxCDf4rTazbhmc4MetoGLn+SvSFZSV/JqM0wVgn+heK1MdnbN5t4cILaDKgNOrqy85
	 PfcgdvOMFvDHeQfRyoiFWfGuxsqKjTaQxqV0H11UvUQ1lziWhAmrA2eZt0p5LYe6kc
	 /lMruhOx0Kfyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0AF5EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882582878.18203.16220199905451186905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863d5c73109c8492fa0e035e077c2478c7438e62b544fa8c907bdf37b1f640ae
Date: Sat, 08 Jul 2023 14:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688825828
