Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDDF17D0
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAA5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669524654;
	bh=4/Ct/dzESAK96ESJKcT1Dl4UklPSn0vBs7ZSv/MfZgA=;
	h=To:Subject:From:Date:From;
	b=faCaiqRUNPyMgrnKLEp33+tx2icPQoXfhREBu9h0PSC2Kol55Wwu3nuVzpGoL63Ws
	 ilRhiaQO7w6gxfHzuBvp3PhxlcQPOEihrADjGU/Oe2vL3lJ3ygYtEr6FQPqe0HPfZ9
	 1pRQgFRLe2uSbQDmnNGXJj2xD97H9CXP28xD2nQ1qkYkAFONsAGs4LwlgV09g6/HJM
	 aj9ZyJWla/GrEqp/Xp5lxsfS8We5jkBmMXN/YuG3DtYe0q6bMd3B+jRYZE3/2olAxq
	 SH4Ro6FgdcXsE+QyyVvrgUZbCMyN2+Hn/rOukwSVV8qqyV5glJT5hBfa5DwTT0Y5sX
	 NU8zmHNkXqjwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51419C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952465431.7436.17687055939891393840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8398e6aca1845ce57f12af0191bc58c3b446b071158f7a1bbea5849eb7bc19
Date: Sun, 27 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669524654
