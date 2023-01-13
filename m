Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E3229AB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0AEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673620287;
	bh=7pHNzNdzJ4TugomdnMKakhOxAkF83LKVzOskb+b5Leg=;
	h=To:Subject:From:Date:From;
	b=j4063+DnlJp9Tc5YFmjP7Ku5gJwC2WT/G6xy15Pzr6hw5GnWikIfscbQbrEXNYsmc
	 us+HF3Je+R46SyBTPiBl8S5sGkAJ6wkgLgSFcjsqnPHuzwq2pKiIkgUdtYQUFHb7Zk
	 4c7F40vtIi2WbdYactsaG4d28EzTd2mEUyJFdtRlGrCnuCDoSxsDbmhhpoeJpjUBjz
	 p+Coq2V/kUaMDO5u5LS7QbS3uC/ST/B/D+5bhhgTqbtcjsCZwJ7/XVh/Ei9AE+OfyV
	 VHNz0a1uiUSSydCZwGl7/Frs/BSLsIqjx0xqbSW8YNX2nrtLbasGrpPtAIP4RQ48sq
	 jhHnA7uvRyKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643E1C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362028740.12530.10876607518913589263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc4a59d3aeef4650742a2917053314d3a78b20c2bbbce53d562520d13359300
Date: Fri, 13 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673620287
