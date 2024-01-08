Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF9754F80
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lg8qFTrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822ADC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704739696;
	bh=YDYvymiFHO+9spEkewyvx/DrTc3yoej963f9UsxHD8U=;
	h=To:Subject:From:Date:From;
	b=Lg8qFTrCsUm1xD3mti/ShyKohatEllv+9aTJ1aJgH/lzre195ccpPlJxHq9GFrl5o
	 qBzqZrp6+KRS2Fw38mrv5ysVN5vzFN4VnHeEgWToAC1ipfPETueYXOfeE/rl3dUMM5
	 o/NONzxrrcl73lP6MNV4cZdOQsu4T3avRGGVDdxDvUYvBXSMyIoXgD5WbCb7jy4ohI
	 tzlslMrPe7Uobwnsd5a8hjVSUAErYcciuZwYycj38ZmLZS7yAel/+4CXX1UmVAba/E
	 i0YpdP9KZsl6NGUk/3LPXSRhpnXVNjmWYbywh9CXYb2+i9ArZjCtloYGtm0IcJoQP7
	 /7QZVy8PeUa6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6833FC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170473969641.4371.673446494111394194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba9e6fe52ce871d42a64aa8d63e13debd257da68e222ca29c38922caa56aa68
Date: Mon, 08 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704739696
