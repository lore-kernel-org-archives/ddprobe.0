Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41C715CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C976C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671735087;
	bh=fu+7imZ6tXEb2vKbhKUffGYk0VpS1nDS7BBsZpxajeo=;
	h=To:Subject:From:Date:From;
	b=SoOWFaC6xl3hgdjHKzNmghv9VYPv9Xph5/JJLoqqfJpMGwdj7AGKGTZx1aG8OhsgG
	 NUgJRR5/Ai0RmxPXuKrrtxBAmgC78YKmas9QLIZDJlOfJFHPU/F7gkNjHR7PmZrxZ2
	 u5Y243xDUBKaruqfkigKB2zC1EifWCKJhUOJHp6NGFQhhSJF42b6e9aaaWwP1vYuD1
	 idlzUn58iilXeTziwytCiwkUiFhgRtEoEgbnJR5ARJjanddjcAaoRpCIJ11p459XWS
	 IPNjQEhte3/1qTQorlDmrBj/0uKkIhiFrAZ2g8F+xgNVoebvxwhKoNr6Xjiejw1AwA
	 mq0v9SYg9WAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E79C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173508739.24782.14791618420334282134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5628ed87a1a5a21a857d986d115d444cfbea41a07236f8be69beb294bfe135d
Date: Thu, 22 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671735087
