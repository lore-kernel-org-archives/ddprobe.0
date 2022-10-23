Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB04C625
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D24EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666516853;
	bh=LoDvM4sEPWtO5aGFq0fQW5v9poSZOGy2ReiVtiaIcCE=;
	h=To:Subject:From:Date:From;
	b=pXbZRqktCJD5a95yLm0UhOPsjkDajmwdCJ2STj+8D+VUbbIGPaqokujDf7vxWkRmS
	 4/YQ+2hfG2cR4zuTCtQdHJuRmmUv+UUoKiGe/irQrEboBi+Ks0JRr1nbgcp5wem5Vs
	 0bqQ9yJwSiQnKNCoCrgjvP1RewzrJjQUTa/IUbR3VnfV5DcnYSYjfdlV1iUbu+bMHE
	 rGFcpdcvjyDYASpJ7OtCwoPuCocimZuo0sCNzaxdZbPeOJ09LnN5mWLOHDQZXdY9+X
	 WS77glE74rXomvjySe7OCV8ePNp6RQlKJgy0ecFpc6yw69WSwuMWwkVqt6mkYT2n6B
	 3WcT0e52V5FYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A54C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166651685331.27503.15748414460807082115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be76bfaf52aa861286db31c9ca024882b97e4af7dedf308fcaed984f9e63aa2
Date: Sun, 23 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666516853
