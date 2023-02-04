Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F6CAD5A
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA51C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675533366;
	bh=8WEFULtPQekzFBYPAwAzrDSnkXWUucBCDj24a7hE3yM=;
	h=To:Subject:From:Date:From;
	b=AoSyJIv0NS37/2lR4P1z3ioYNb3koE8yVlM7kWNmlcGblPEhUxiTTVBlTmGjaf5Et
	 Fw3ZwdXU9r63KCOCijA8V735eiyFPHcTSlZiNCteeHX5KNCYGlHtaDEG31nem6sFWJ
	 +DnbKEUWTa0iC2MZSGGgK1XNy1nTf6DEtmqagW7q7tY7ppu+VaoMwjlaxZfAExyXFd
	 IkSwHBxmzINJfyd5/Da1hohaVll78m1hPRhwfIKQ7bfB8NOJrQgdKWSbCXTXiPOZrc
	 VrMSu/J/MoYKTQlJj4T95tYic9VmsHJPsoYUWZU0RSsQAohIpm/GWpE369iyh1PvPI
	 nC4z0vzY5fKwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D2CC61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167553336573.26647.13793615536914198027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d04d8ad55fa4ae68c9394705a0a2afe1f1917cc449d94e2613aaeca2b36b07
Date: Sat, 04 Feb 2023 17:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675533365
