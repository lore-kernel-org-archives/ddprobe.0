Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4223D7E
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A0FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675307165;
	bh=OHLMFR3Lgdydq7dD0saYZ4oGk4lbcPSDV7wRwVOhc84=;
	h=To:Subject:From:Date:From;
	b=cBDMNk98KVgLTvBXYjJ9KplOUuD4wvKCwipyyhJRH5VKZFteB1owL6E2dZ6w0lI7h
	 1A7moN0DZwG70soeXsU/hl/kzGl4ETlBgNWmNp3xn3E4rjMcAMBhdHGCEECSKP2vRE
	 /QFzBX0+wqZzEuP3m0upjNYtgFwZkkWEvHzEc6VMCgeFh6VnhTbDH3/vxavyz4VLpp
	 9vafEIGeOz2HSd7wGiw882x/ABJlIb6EeS/F5hAQ8TC6x+ctGXN0Jvwef8ZlinncBK
	 wTRudP9ZspNShAzLqCZ4mw3Px+oGpiOFHpkf4pInY6vDhHzwE7xLbJeZF7daXv5LPJ
	 KQthZUJ4Rej1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA021C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167530716575.10627.15743659427844638132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2441195e02d8d7fdfb0a2db27c70fc2ce36f1ed15a6081b6dab22317c8edda
Date: Thu, 02 Feb 2023 03:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675307165
