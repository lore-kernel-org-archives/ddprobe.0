Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0085A4610
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645192285;
	h=To:Subject:From:Message-Id:Date;
	bh=X03oGt3mcZQMqgbodGrf274QUX5cn0+FAmSxCdwPgCs=;
	b=mqVst5M7HIM38RfXuOjwmzCoSCC1cqf+a4DFrukrmh0UYBCwFKq2gtf2ljGJ3s2X
	monU1jkz23D7lQTrfdUVTc950HXWhXS40xkVZNJVw9xi/7sdXgtg4Y3NYz6K1VAi2kc
	I7dlH87weVoHJk9M9TSAUWSK2ysGMR5DofvslwFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645192285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X03oGt3mcZQMqgbodGrf274QUX5cn0+FAmSxCdwPgCs=;
	b=XKcQakl6+iLBtRTFoWnWV5SV1PjZADEV4NxX0yGgIsp7JxJKqUhg23ZmsZvZf2lo
	KTewQYGVYlUhdJeKQ+2CMslb11KFFoZdX6G4JgZzj9PhpQx+Mnz/kPpv0FJyAWg1dkD
	zO/W+Yu0lAHQZ8iKzHV28+Uh4TETnbbUKUj2SZyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d1a0aaa-805b8e11-884e-4305-bddc-b09de4767751-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bebb3590f68466d445032db5fbc4b6981062569d37bd924cb6f7c3187b1d064
Date: Fri, 18 Feb 2022 13:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645192284
