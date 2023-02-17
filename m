Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E82D376
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 03:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB551C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 03:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676605985;
	bh=r3WBkwy+ol4pOp+NcZzdTlSwBzAMVn6KgChzjm/JGKI=;
	h=To:Subject:From:Date:From;
	b=n0qmDcH46jk85FQeP6rT2ViouJjQWwdFn2zw6w+qOv+LEez3xA1v+tSok6lGAlRRN
	 ts2T4uUbXER43m6bxkTqwzCHIi6ow1KiS4ojWCqNMJ+djJTnUgH4u/IoKPE4cNd+SH
	 e9T+g1k2886PeLV4RymhmmNpEIOjnq7wWvKVWnwPMYOTwulISk7G0iGyBTQlFHXoUg
	 Ow9JxQu2uSl3JOM2Qj79RBJeMw/Lmmpw3ENpkPJugw0ji1a1yamS75KJFEBKPN7u3W
	 Vm0vw1qPkNRVvNhcnj8vGOxqdF30RYPmKTMqJUxbqbxFtCkrcF04pcEFSTPqtSg3rl
	 OZp4xJ0+VP76g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD0DC05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 03:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167660598575.26649.17592532893204497200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc81682b7fcc1c0dc4942b83f1dfe1ee68526ccc3845e6737d8ede01dbac683
Date: Fri, 17 Feb 2023 03:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676605985
