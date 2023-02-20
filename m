Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D2E2F4B
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CEFC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676897345;
	bh=gVvv1fp+onNkt4bb0mEFygR8o7EdLMkbzkIlEWkUMrU=;
	h=To:Subject:From:Date:From;
	b=Fchfm0qn6hbJPZ6b/poJbfRrAU1/01iDq2ygPzPlqsrsItBErU231tXHKjT1wp+Fw
	 2nN6f6UmT/CQ0HpOQ+5AIwL6TMxet54knEQbq8Q9GyUUIEJJZgyxbvUcVrLmiyS8gG
	 zqY7mB0Zozows9cyjwkjXKPZvZCS5x2LgMRzlXimBD+IikURygGNqAfTwYTKzrQJYO
	 Vnv24rIAiPwtBAp18Wt1WsNlFudFiTnFuNCsBriQ3XC+lMSx50NZIJpN6fJoYUjD65
	 TtA6gYQnVRuh2jSDOG4vv6AuHpP+pprhNoixP5ziCwtF0uFpmVJ4ArLiWX9BWozQKL
	 AHyIHsDnRMgnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B92FAC64EC4
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167689734574.27382.10908435657270950218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6f02d3b1eaaa02a6028451d66c321061c2ac5ab4766ef1989b10fbb5b0cdf2
Date: Mon, 20 Feb 2023 12:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676897345
