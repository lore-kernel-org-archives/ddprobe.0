Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03B37F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A226C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672890687;
	bh=nDDkhQjKOdbl2FVdh3YRVOwrl4XBFeVPqvC1zoyBzSg=;
	h=To:Subject:From:Date:From;
	b=AObghPq4eNUju896hUcq3X5tBcY92K+pFTGd3WFXfX3yc3yUkt9eWE9eYYGR6gbDW
	 Q3O832Up1GM/IoiIMSzAGU4bcG0C0pTE+KTXonFzJMFSk0FDhxrOdNm6+dRRv460XU
	 O5j5LUmPhs9gkKAhZSlDPs+d6oyebu3pZjwHGR5sFLys+SKkkP9JH6/7Z03J44N281
	 +hip++sLM0wamh+kI74A913YMRzD0XtSobFcLpsISQPXbL+HK0VJCDP+rZbwj6ZHcN
	 y4lhtO+YaDSK2u0c6Vt34ls2cz/it+/UbTgIpbVWKUJsa/N5TwuV4Ht9rBVHdA8hZW
	 tTYy1fxmSF+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6048EC3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289068738.8380.17905608056522391503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f39f54948fef00ec70bbb633981affb318dde8b437c972eeb16d28c6a2e38a
Date: Thu, 05 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672890687
