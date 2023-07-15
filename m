Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7943C8C0A
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 22:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F2CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 22:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689459668;
	bh=6uvi+6WGy2L2jehnUZm3wECflr11ZJGk3jJ/XVMAmt8=;
	h=To:Subject:From:Date:From;
	b=ixxktOKrffDFlzO39emMBO7EUp/ZecvIP6LetF2ClADt+e83u9Z4jHfJSqbwePP0E
	 JgRxqeViNEF0hHXKGwcMy1o491KUpbysTXId0KDhCdb1kCWbowVaOdldlkg4wvQn9W
	 plvWmwVSUBvvYDDivWvl8ldcmyJTqqnsylurQhdm0JTb8GVRWL764LrEPd/e4ZdeWc
	 B0nmy4drNuihm92ugVED4r2RWnDNKcI4wkahUF+3S+cv6sN+VeZ25wUtwKXpt2bGhO
	 lJ+XoCHwkkOfCRgCqFId//x0/2F5Gc9Mv39M2e3ng1uG564DeGQbUwA5LA08jT3hh/
	 DUNFSud79z85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C5C001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 22:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168945966870.25898.7111174899146935664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed313d0c5626a378e6d6fcdd2ef9c6362d2a6ae10fe30c57e4bf9b416ca4e398
Date: Sat, 15 Jul 2023 22:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689459668
