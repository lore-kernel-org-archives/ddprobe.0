Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0170A19BB6
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDfQWXp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCA9C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699535896;
	bh=UaK1IhZdRn8JCptu2HUJaRvg8jBE3Lz28OBQgKbszIU=;
	h=To:Subject:From:Date:From;
	b=JDfQWXp/XDwz1JxX3Ub/NEOoKsSy38GzT/IbK4Cy9qOOOFg+HZXM+Nl1oe65XTpAm
	 2RZMtkKWpB+G8CHnw0WIdUj/8TDiYmYaGwEP1S7wZXAOpBXdlm+wdx8TfL9aS+rECO
	 J2gqVsZhS4LEB8gd7xqXMuOqATCLwsOHXpVUKkYADPk6XAzhF+uFAd+TC9Wo8UCZZU
	 yr7xCacUD/YEabefiE+MhWWG604LRbO1CuIjuOuZcg5upRwpRzQ4gcMj6MvJu3yaML
	 kNcBD4sqOZRxg1CsQq5aSp6Tnfb730sPBdCiuoxrFnbVzKymPDbLrZvDHfJsw1NoGC
	 3bmZOzhKdQp0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF8AC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169953589638.2207.808716065413973806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a642566cae9265c4b3f542ba71734c8c02b217e0da145a7ef976ceec5cb4591
Date: Thu, 09 Nov 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699535896
