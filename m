Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5807780E
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 03:58:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 126F8C433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 03:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689134289;
	bh=q2RlTkkMghQFdDOqKVE9SnNpWvkoO8zlg6/9+ml5aGI=;
	h=To:Subject:From:Date:From;
	b=LkyTpoIx1Js/sYXdAu/RSzCQvn1MuipkqzIB3euIM+nbQgB7YAs+u8Xw7d6krwcuQ
	 OG/q3P8YSOBAG7rlLUtONcxWQXAbdo9+W8w5LXMbCh3wDCK/DubQ9W6CZmqO+0GPE1
	 imx0sFTZQVzrplG7NfYKDiKek61TIRPHlEl4t1l10ieaT3CBp3NrZX4JRFz1Ndlfxn
	 wYXqoZB+E8iy8f6BXGJbNyYzH5m4DqEl7lDbFv36J0/Cuj5RdmLtyb8Z+hlRjl8XKI
	 gKYUJWWLYILKCEmzK1oYCYbaNNr7HpHKcutupJ+yj6DAhXS8V1haXLdqAmE95dlz6u
	 NqWzs8dtbAE+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D03D1EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 03:58:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168913428880.1599.9415248338723482127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3271b04b74050ed6b32cc6622e9755af9070f90cf3beb6e41f918be5bf44a874
Date: Wed, 12 Jul 2023 03:58:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689134288
