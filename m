Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1787462
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BEBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663687853;
	bh=Dvh6anliZeh9J8VFOkFSNvlJbn9+KC6s9TahoGuk2fk=;
	h=To:Subject:From:Date:From;
	b=s6VQP/W7ApD8tcdGVGGODFvIqdfE4QhaeZw9UA9Uf66CxcKOYjWIjEeMLGf5NcF4m
	 0OI5wSBLd+s7dglkf0Io8g9GBBO7RcAfxoa63SB9QYp0LSnLnYj31qt+/E87hbjlU6
	 ir0VT9186RmyoM9sMlqXAUAbx8YL2XGITW/5wOMmv22ZEcyeOz+0Icqg9i7UK9dYBN
	 rosMSkK5EF8y27Ty2HCF3PblplKwtyy7+Ark5m5k8wkvgQhOS14VeVaxLi7Fn67L5p
	 ofL7jae0wh1O0T/TJb2OqFIsQ8nlhJ6LjXY4/0eeRGauAivPhm5dhcIjOfYHzkRxuZ
	 qtkcf0lfFu2Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C78FECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368785337.3269.5645159245370354517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9781e419f74e9a9bdb01321811dc1ef0ca37a376b7a2eeafc3e7acf3d362390f
Date: Tue, 20 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663687853
