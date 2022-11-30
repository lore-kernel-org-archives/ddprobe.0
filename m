Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4057E0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65FFBC433D7
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669770654;
	bh=Qc29eC+1PWshXQEjxXdIZjJyZctk4AdezyTThZWp8M8=;
	h=To:Subject:From:Date:From;
	b=THUQfUmZVZC5oLGCzPbqH62bRyhYb+uhhBj3LM7sSYwUatvbHfeE2uNJk6O42Cc0q
	 kD8eyfXZkRn45X6NyOYEP4ZmgkKX1fB9eUlTIyDAJ+shV4sUb5qL2XnbcFOqA5YOxF
	 HMTA1Vi8o8HLK8jzrnbvjVQiV22c+sGtv8emqnDOfd60hdSGLrtF3+unKoj2Kg8Z6H
	 kp30A4Ab4I+uzis2NyNbXhW9ZaMnoq5b808B1zFoJ8oG9pi2xPPMctDPJ9Cb586JeE
	 r40ILEyytbrAX+FojmdUOmKf8nNE1aEezJSaWgTa11iVUvQeltblVEDEDLCdtiYJKx
	 2PvXZWD9xpYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F590C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977065431.10608.4569921119463444385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f63b3070222e2d2e910c78db87e4171cfb1eab768a533d8e24583fa33193b2
Date: Wed, 30 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669770654
