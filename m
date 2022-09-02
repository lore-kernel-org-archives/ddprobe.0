Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA1F6700
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D72BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662127253;
	bh=Wpq8XXHiaIyh5YowYGGweYj4Qyih5j3OvhKfe3D6Umg=;
	h=To:Subject:From:Date:From;
	b=iBAGch3xzxNFwgiV1UBJDHt9jJEYqouLIWZrc3lMmsr3v/PcGyJWTJflA/G2ezC8X
	 b80UdWibXSrK5ftFtIWlviFn2jDt/ZC+i81/b4fBXXpq+Ux55gg9z7iulUoN4JeFSx
	 iDhJvP9gqjez86F0D56McboYJDl8wYEjuJ2pJZRsSs/t49U+fwW4qIZp3vCQXAD3HX
	 MX6fR1OUdPrAP7SMAk2CRq6fNPyeEDeB3Yo1LJmfSWt62NgtFajr4nACTDqmTKj47p
	 s9CRWNxjPLcjXfeD+wVBa5BNOb5MViCk+8bRAx0zG4aqY5v7zVsbgaL53uwqJv73zA
	 67GaMSbVk0N7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54712ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166212725333.417.7938337525131678146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c500dd229d978c522e0125b0b8b3152382cdd6b069f0527151fced99a09a8ef
Date: Fri, 02 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662127253
