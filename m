Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3B63212
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C58C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671655287;
	bh=pcAeYp6Kgv0bw2lqlJVYqSgxqiV61Xy+TTdYRqghZf4=;
	h=To:Subject:From:Date:From;
	b=cEcOCD3EChSKc+ch2/RR2C4+on8/c7WrWnlVnAgILbjr7XObEZXck/W1QxDqU2gPd
	 txOMTsTRdxIEV2mPtwKfqfpkEZ7uMEnW6K7C5vFD2H50+xp73sMbRGI2xKt6FzZjV4
	 ip3A4a2MEvnmSk/ZMagKZsEvvuwUFOcbmZF9CK3F0Bnv6HdXFu31Lf4Ua1aAN27dOw
	 Xts2gIndbxk9RxdKw5HsFZM/YmLNcs7pPNGh5nZp05k690vQgETucVWM06C8Oj1HI5
	 LqcmuOwHpmiyeCrK7//9ukmcJr+02od5smORoOiLR3pdqO3+cGy8TT2t5k0vLwZjNv
	 8QpMp6c5KUTLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E25C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165528741.25159.4948865663619688906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057d0236f8e6d427d94606369cec9632fb0b1c7d4275e758af31d726bb112fba
Date: Wed, 21 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671655287
