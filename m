Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC2F46EC83
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786721434; cv=none; b=jN1r5/wssEIPxyp71UD9bjq8qz787b0mVnHlvWQOvKze8LupWAoTwlsURIhGVlpikr4GZ/Vknv7K+2N6Y9MW13q/KR/GCult7pJuWVItBNtYJGiOf52wqB0+JTMxiVC4o10prAaMcaG1zDqg068TAQOStTHa6Z2BHR38bYz7MI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786721434; c=relaxed/simple;
	bh=yowM9LLTWBzFtfXKcltN1tazRdGWMbQ/mh2O/qYMx0I=;
	h=To:Subject:From:Message-Id:Date; b=fBGa8LqQvdc4KLziKD0gWFUfe8B/ht40xVu8wvYpQ8S4N6vO4JLdbdVLdUfNKEw0C5roHCN2ysDR3AvcAd+Gr3sGr5NoGi57tq9KiPi0VfiZ+gXYCp/M/WlPzDyMqpOs1hYH8c4qjQiTCKURcAWuA/w4XXHhc9VFfDC73ela3Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2U3fCIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2U3fCIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA54C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786721433;
	bh=yowM9LLTWBzFtfXKcltN1tazRdGWMbQ/mh2O/qYMx0I=;
	h=To:Subject:From:Date:From;
	b=c2U3fCInVK7ozqSGJ7hDemvn1cLxJuJo1X7DkJSPpf/3upFY+oTwzNEmyFQarpQeX
	 DaRdFotoM2vBw2EImvJKS1au+D5q+syacepXcR+2F0rj7mq1c0QKljm2vEGLxcqPQZ
	 HUVfI3jP2tJavjFwkVzgV8T/mc2VhT8q/gdh+szl4zm2Rb9yofFQl8BV0fbunMp7Bo
	 Bg136B4CbcgX4eEZLhE62yUkbC7TJhTuJEq8Vjus/i5gySvbWOFqTnPcZboGSCSZMU
	 R+BbMbfdlSnGlfRz36E4zIRDbUp+XPL1g2cFsMWSXqGaooatsh7//nsyBt07Cwv9pq
	 3zRrDA3YfIcXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8380C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672143368.11712.12118821796520333716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e830b0d053295813648208c86cf242370a7bcf7a6acaecfba687f4243640f0ba
Date: Fri, 14 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786721433
