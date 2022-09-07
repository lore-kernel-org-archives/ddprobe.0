Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB5F17C2
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75229C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662509453;
	bh=t7+rCLe57Ydu1VC3ZvTeYzkAWcK127/0IlPpRlGQS9U=;
	h=To:Subject:From:Date:From;
	b=s1S47wCJFJ7mdgdv0+t5UeleHWShQFdzXrQdtJjmGN4qCyQK6c1vmZqx0UXAnme7y
	 U+LoZckX4cuUaHpXmh4dWpe6LrSy8N4e4u7ZDjIGg5nkR5QWUMGRH7ShoPBlC6pTa1
	 MOy6q11Mh/mmphvCcS5k9lq2Pr/gqzX4K7LdsgX416tCGxJylL7+F8BP4K9vW6mjR3
	 VGze08fVpCMDNup4Ulf6mH8HflbF1BV/YfFxqHuEv87IK7XpL3BSERAGgt/WM9o6qQ
	 3sHd0slivZUprU/ylV4R9mf/IZQKrslC7rtEJwoFfdj/z46LQ3Wl4eBUFMIbe4JswW
	 JNz9UZTVgqpBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF9BECAAA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166250945333.5683.3579754209595227413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dcaf9411f655aa29bad554d4f778928f30f3bbdbc0aab592e4dc0b8a5a6e0d7
Date: Wed, 07 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662509453
