Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB4223423
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 14:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D5EC433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 14:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685628965;
	bh=UQIcIF2T717qegOKEioOeA7BLq8Dzk0vIwPCzssZgRU=;
	h=To:Subject:From:Date:From;
	b=bVKMtC8YmOJJGTil5u3SpFotuQ8a/MBrSWuNqsbTH2XAe0AklWvyTOKtRgoSI9JR/
	 lCaDPTGZKXbfK3R35zAFyniBlXy/KyquLfxgpfLL6ZKmT+JmXxsSdi15sgUV5WPmMp
	 L3ShzEfRf7ucsrGxqb82+5WIKfGR40pMPCDGSNf7mueClCy35ktLddMRLAZoNOLySw
	 EJ++5wJ0fF1z7TBcXhxhAbWdNOw0UJ55jJyJdnwcmXi2I/oUPafJIuDnJbl1NSmqT6
	 +CxMxfr8TDVqQRi7mHoNLz90Z2N8GaDqf3oJ+LOt918teRKJtIOfO5xdcjajcekYPC
	 7GW4INhh0+5hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD65EC77B7A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 14:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168562896576.4847.16437607933676246341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47b37efb4ead846fe2dc86a71ef6681cf228b2d72ede3a1f8972ef0ef63d9aa
Date: Thu, 01 Jun 2023 14:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685628965
