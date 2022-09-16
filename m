Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C89210D
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E76DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663308653;
	bh=gofOua+CTe0bnhcNKlfsq9crbl7IRWPT7MCVglEr6eM=;
	h=To:Subject:From:Date:From;
	b=Whc0Ygq81gqPRNR1j1gL7kvtOdJC4sJVZ7noCiO1DC1+zM8bePH6aHRlMDQ3/e9Vu
	 IOd+IzJDO3VjzNyBYu3YKlgD/xwGHH6Rt11ka60jvjOLhR4NgO40gLz5I/bBmSDOTT
	 vrGOBO05I6F/y7HHZswP4pmwNJeDm/AGgbR/KmHEaxPwmEHJyTfhRQJ2z9uahHvknK
	 5aX145gIRMnJFE0862m3/SmHcSmOKwDixBwM0DgWQvnJyOIuMK7q4BtPcsyuyOtcQ5
	 VlrOG802OlJ0d1v71Q01D7oO5NsA4GG0KkEkcQl2onqiZ3xs4St+6Z+H1LEvD7zcYo
	 k3Zut8xio5UdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544FEC54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166330865333.22493.17933918864185996749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e28093085d34daf836c6cc152979484b805594a7654d2cac7ae848cbe429928
Date: Fri, 16 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663308653
