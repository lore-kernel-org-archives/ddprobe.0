Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B701C7B
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D8BC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664727053;
	bh=AGGTx/L/F9mYJ2ovjq8FGIrZuiTPtheKK4QcgRirVNI=;
	h=To:Subject:From:Date:From;
	b=ffasW3+So3FvTlWYRO8pBmlU8gfvjGpP7YK/rhmIUYWQXdf4re9Cy4AGLVZxLCVfi
	 LHHf2YHM1lpXQ3uK1bz06we541XV4uJ0/mldXa426e9cJBbZjceu4YYmldtXARDzA1
	 WXCXbHlJ/F6D0KX35UszzmVgjP3FVFGUECPuwTRMwD+Go13443sGC+YbnSCYCQOEH4
	 peZwQtWd9wmUOBdkgoJ4eFblctMgPBzQSj+C9dVZta7ojzFgoxAXaYeB0GWGt5NrK/
	 +AYQqvOwMQB2dhofl/5WKGwVY8zi0aH0NY2wW6VZRv1AFbH/c9F3U8QaOKMKzm10sP
	 UCzRZvRi7I3Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EAEC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472705332.11944.6024044912836265784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebd4c8deb8d68e86d8d09f0796dc4b7fe6100dadee4cfa78095b2b71e6131a8
Date: Sun, 02 Oct 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664727053
