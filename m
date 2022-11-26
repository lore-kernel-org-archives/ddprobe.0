Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC69023A6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C919C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669482054;
	bh=r1pMrI6jZRIOz3rWv6IvLMPL5ZfQexIg28SypXmqDw4=;
	h=To:Subject:From:Date:From;
	b=ObUEc9M4hk3ZOxkTZfj7XU8l646ROXtlMY0VA0HkM85m2zSXfQwytGMf2+WszA7Qa
	 n4JY7iRRYtlG/92xeGTTSz//pCFfSsI1Rfyit8LITnhpqDBe4NKYD8XB6/XcjNzCNv
	 A3tmjuRRGR4AtAUpTaPL1BBOylYTKg3Ix+iiernyeZBZjjRJOQTarqd+41xwyg8vgD
	 74NX5NFqFkz98peAQWMBdDqlvt89Aq4HpwJ0SsVoDDIAKXhxAjWCp5lLDOsSYKtN4A
	 xgIC/EFVduhH8T47Th07/7vbdPla8eaedp+d2psHN2PkVQm5D3yCiPpa9Mspxhe/jX
	 HQ7EtJO+HShdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E9CC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948205438.17122.4127367731797508885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b734b2e18ba6b6e9cda5c59cd6e266ced3885f7ae43aee2e3da5ff06ce12538b
Date: Sat, 26 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669482054
