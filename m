Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4596FBA53
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 23:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B15C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 23:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679526545;
	bh=M9nXmmkAprrU2jNfemL5E7RJEg/rN7eZ9c3zCjNUqAk=;
	h=To:Subject:From:Date:From;
	b=Dmc6+IliO0nuqmQCSlwHsKDunbo5aRWGCCiqNKMP0s5lPfRXEm35pEI49NRnqow1i
	 DOP06ck3f7XsroRgtKtsYnO1iZZcU7vsDBA+18lOPNGrANF7AhfsNfi2eR3Fv2XZJQ
	 IPY7s85P1nb9TKyPmLeMM99C/rs3VkexzX2fNSVra4Zut2IjvlnTI6BSBW41GdvQ5u
	 +Pq3h1qTwzuG3AS5IWGYDPFL+uQ8V5UQTg0d4K+npeBiq7p40XS+t1hOJxvYwiIq8t
	 fJqU6/GXZ84l2RTvC1yGamnqsU11+TaUyb42g+9XvI2z0YlUEhSsqm6s0jGK9Rc4xE
	 R2tSP6G1CSB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FCEC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 23:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167952654581.19756.18132448611721424985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b2e62113770d9e340ae0f8cad9e9b325ea680a95cd06179bfbb37d41e92f60
Date: Wed, 22 Mar 2023 23:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679526545
