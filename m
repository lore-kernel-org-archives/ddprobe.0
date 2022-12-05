Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D327C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81358C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670245254;
	bh=DrLtRzGTPxPRrG9L6kCo5WO4fkhXILeYKuvD9BQxbz0=;
	h=To:Subject:From:Date:From;
	b=oS1Yj755I/734IWWmTcPumAKV1jm/FqZ2AQOJpi8wY7gphezfGXkhvpYh46EOuuhr
	 /8m5AHqrTCYaocpQhq5OH6G6JqEaqWg+ros7TIuCt4FycaQF46IvAhV0Ssg5wg3sFi
	 gdIVj+RXde2LwEbfLgolwv6wpg2l9R+BNzZwx+gvX8MkT4P5l+QkuRbsUlD7ptKvR6
	 6jYj6D75VFI0croTOvIQH+RJ7lK1QlL6uexQ3wzGqFqZR3M/82FRA6P06kIwMWyxTr
	 Gn5+2uayTwJBk+BR1dpy+bN7DqQ+Xq6/vGytR98e3Jfko1kdvgMgZmYco5DqySDeAj
	 dv5c9eve+eWyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E15C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024525441.1688.5012089568062920404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0242af4a86e6cf406d5164c02b88a629e65f41802bb5dee5d58b4f51bfa8be17
Date: Mon, 05 Dec 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670245254
