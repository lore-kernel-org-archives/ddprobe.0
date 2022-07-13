Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E314A25
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657750012;
	h=To:Subject:From:Message-Id:Date;
	bh=V558edhnz4KEYFxzlpPtXh3McZbxUmehfH5Xtu543OY=;
	b=QmNsjgXxvK3E6aAXGt6ozflearmNEGppSwNeuhiLSa2i1/JW0oyJ1idb9mX2oyb1
	Eh1wyhYdI9D0j3mJDUdv24YaWYsZVGw7SaQm6lD5mXxybs84fyop2QVQbbadADRKJ23
	V1RN8RqvwwhIu8YK71GrEw1IwgDO5dUHP2JS3IR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657750012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V558edhnz4KEYFxzlpPtXh3McZbxUmehfH5Xtu543OY=;
	b=L9vhUcou5HjZ97SUou2IB2hO9idluLTev9s5+Fg10JcPahzuOc/y7XM5b8Z1NeYY
	HaNxPFBiJTgLAWjChDKrTnI7M0o8PH5kCTZtl8xWok0+YBd5RMoA0lx/pS4R2pq6foc
	Z58g7UADK9j1rLmwr665o57YRBLwaqqqgJltj/bs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f999c17d-7d219db6-139d-42d0-9689-8a96b78c6007-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57bada5038fd239ec9b48f1a267158d1f870be1948ec671531cff1b052089026
Date: Wed, 13 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657750012
