Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11847A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646887884;
	h=To:Subject:From:Message-Id:Date;
	bh=fBP5iERYeRFL+3asl8NA+9GP9EjeZH4ovsmysoeGpIQ=;
	b=elNZJnYhNYLXa+8LU24TJdfXD60t3brvPeslaCtLiZgXV/fhiskRRf6Xg0VGbIzN
	k7Kgl5VDjxIn3d095DDCJGfG6gci+SP62kShhSsrGss97YLow5CG85ZADPxgkW3ZXEh
	4k6lA7qYlgLkp7FYCJUNrjPCpyD7urhBLObiI/hY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646887884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fBP5iERYeRFL+3asl8NA+9GP9EjeZH4ovsmysoeGpIQ=;
	b=Fu5KLR2j3FsSW284qEuz11KinmdN9jpxh3UH10tL5B76cVupR2ceooNjXmNpRA0R
	kEofrFZsYg8Qm6xulmGdnjkept1u4OrcksU8A6Nuiwq7XvKIt3X338hW99HK/c0bKAy
	K+F6Iko0U4+NUUw5gKT7Hy5JHKvr5gwmVxIY0CKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f722ad7d3-8304d2c9-a52c-4025-9dfb-c5c38b345b96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8845b856562d42ae0a2af5a91ba4997764aae0c75bf12ff252f3dc92a573c742
Date: Thu, 10 Mar 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646887884
