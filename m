Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D910D8460
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCA9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669839654;
	bh=MiEGtfaj+iMrHeNsEqUwt+xIZWXVz+rx6vNZ5uvrU6w=;
	h=To:Subject:From:Date:From;
	b=Lh7iqslYwHIj0REYEd3+ztrEYyglrbdbN9uLaPEeL+IJgUh4l4GuTlQdNInBuV5To
	 s8/Kf/f+mzj3RgQC5up076NE2U64G3irI9NvyY3qxV4j/Acl5pwkzx577rap8TX38j
	 bMtu2T5dzn6gi6iqI7rydvv6BJ0t759nUCK3V1/aDKxohZIxhilN4zeczQczenujwP
	 N++TvZNbp5IQvJsZIlg0Uu1VEFqiYGaH97JklXn4JPXLBtnTiM8d6Y4qTmSVKvRbxQ
	 9JPcntYpb+zb8PAgBUzAQ2JdSazIH6XdGtZHMEYbPFGRpqGBYqmITOZ1GFGX8ToPMR
	 LotEvLRopX4aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630CDC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983965439.3431.10360428019309550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d923ebe149ec997c59c668f1ca8de3fce27daa91e1392a1e8a5d382375fffbe3
Date: Wed, 30 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669839654
