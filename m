Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B6A6136
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646259685;
	h=To:Subject:From:Message-Id:Date;
	bh=RUTJxrB6Hz7renWCVb2fEMQQA3Pj1Ptv++C+dBJsdts=;
	b=AEc6v+Mt2xyHmV2UnUsxX6X+S40oUNF8vfkTFv5KMb1RAhUZqEiWz2SDYWJHPLtL
	nRfKtB998fC8IwgtegZEOkVeCubj+GMEVdCvXpwW0OxS4D8nPQHcVLo5ytV8XXlfNIn
	Huy2u8TsgX61V4DhfCOVUaAAU0oaGpb94vqq5SpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646259685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RUTJxrB6Hz7renWCVb2fEMQQA3Pj1Ptv++C+dBJsdts=;
	b=BlCPDuLmd7Xuj1PfJdlIHb1MHn2JLiRm85Jy0GoVrR6Xlq5IrWSGv+eZJzvV5Z7S
	XBSkKzxsdofFIXs1o2JYTMeextZqgtE+tOWW1PgMkfHHdz5yhpzrpqjoiOo6aUUj1BK
	TR34CzM7wNkqFIsPcd99z/f6S9T7TaAZHR+zkSls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4cb94599-2965d96f-ff47-425f-b164-24fd357a933b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfd75316cabebaa024b859ca8f32122324eab283ae2792ce2890ad4c07ff7573
Date: Wed, 2 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646259684
