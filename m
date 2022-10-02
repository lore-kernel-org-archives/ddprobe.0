Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3D73D6A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD78C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664745653;
	bh=vzvq/A25FB4n/9XrPfhMP1Hdmc+xIPTBbf9VFKP47IM=;
	h=To:Subject:From:Date:From;
	b=PSpYkX6yZRGEzUDYuZM4QpoZcysfHXKO1BTUV7tVLWjO2VQeBgsKJwUbNKonWTjNa
	 n17xtq8KtAPTEZO7Jc/7d8ZmpMErGeLM18lOE7Gc8lx5agMco4VUKixG1pKIG9WlXE
	 PKbWIuJzrbV9NCf2Nv6Yf0Vs5QXu/tmhBf0CCjpZ9oi9q9HD4qbAd3mw33Rihsr+3T
	 DYxhv/IWHZmJZn8RPjwtdGkQh/jTKs0n/YqviZ9Zhbhey6HbzLqdketUKXzmc5onoI
	 qREDfbTwaTA/REqYBA7KaNdnaKlmJLHXwImsLKOMYuY3HM7i279hxcNzRCUZs2Yv/N
	 erJsYmqBzTiDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF1FC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474565332.5935.7354185421196726575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fbee6c9bcba45fe2eaea68976cb6710c733f11d842f8799b72360ddeb1e832
Date: Sun, 02 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664745653
