Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90377B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D433C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667364054;
	bh=OD0wTVdl3ZhZPYnV41yl3UF+uqxMg+xbQxuvMUYahdU=;
	h=To:Subject:From:Date:From;
	b=KakBM/gCtau3WYlV5/XbDSz3ivXhbSuyOYTBefKOFUxE+F35Ow1hqaJvyEsDFFvhQ
	 R6DVwRe+LBQ3PmaAB9W0aUhICHNeN8mm9mUMUEIP1avxe8FmLL4evSQ5q615sleaS6
	 e4kaL89ILvkA4XEY79f8M34REVyQYAZsAPe4FCaG1pX0AnYTo8IINOxAbK7td+vOJe
	 HjcfCxU8lmcCJGdUgFG2FRN9lUM9NbMpC6yi1zXqXDJlPRkdFdYXUg7TWAl3P6xh9W
	 4gnMqSFjWiJ6hZ4QhFrJbHVyjzbVr49dS6DFoVslbe8Sa/9fw2dsOfkAttOnievCf6
	 nPaD5V1mrg3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E88EC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166736405434.3253.10433497069885415621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c7d6d6c9285208dd7309e25b7001675b42a59f0b8c0f0a68f273a8f85483d2
Date: Wed, 02 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667364054
