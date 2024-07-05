Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5686B367
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720147523; cv=none; b=Isf4LWMbsEtqloHJ96Z+yMM1pOL19Zx66sYJadUu0odHeIANWhkPvNv7yFB7aOy1vxpJI23IdUl/PJHpu6pWv9rImLtTTi6I1Hr3hZW05caDqnQmFWOJj/CDLAbGJxS5CIVqe97Gc0uEZeuKOhMZcoIz2Ysi7tyeADe0+i+ty7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720147523; c=relaxed/simple;
	bh=hPY8Oc5erwabGd9WlxSCvQ9myBAcuAtdPUNO+UJQkFQ=;
	h=To:Subject:From:Message-Id:Date; b=LpjP/JysJGTDadSjl84Xnt8bW8Ii5aGKZZ6v07X8pOmp/feRckYNh2kz9d/4cI1sd3hU3WUyytQB4sy+yXjkY+oSBXT+HmSvqzW4xyc5+ck71gamYu8KIBEfSSDekI8zgIRQn5nD+0DYdc4JWe28L2x2/EQf8hn4twsGrnP6DK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBZAD/ZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBZAD/ZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEA8C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720147522;
	bh=hPY8Oc5erwabGd9WlxSCvQ9myBAcuAtdPUNO+UJQkFQ=;
	h=To:Subject:From:Date:From;
	b=KBZAD/ZDLQ7G1UvKQTWuPG18+Ga+3cF5NzP17I+js1mpeZmDEYOCcBEbWQ0dCSL7t
	 e1HiLZNkfJREhAm6LWD+mtlrWXKQOM2Xwfu4VhdCQLyaHwRR3PqmMLyQO4KEmEc2P2
	 7AgTDM/1uu4G7aiZKcMFqkHehkT4kcp06enlZF8t3TC2TLz0Fgh9Bnirxf57lCg4Po
	 wWt7e8A3ukQKMi2A7pJI92EDMd0XFOUfqbhwNOy9FT+a+GmSmj+JyMX4aZL4wAy1wA
	 0+swRS6K7CKHGQa2TS1k3HHQBFUtoPUXuegRtearc6+zh7NsUFwcDUj7l7rQ1aWpiy
	 n+oSunlAqAqYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C635AC30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014752278.8460.10246897019129364146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277ea5cf17660833288416be13640ba4c54029fb83949d130a5d041a45a429d1
Date: Fri, 05 Jul 2024 02:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720147522
