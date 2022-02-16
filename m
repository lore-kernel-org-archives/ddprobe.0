Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6D823CD
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645006884;
	h=To:Subject:From:Message-Id:Date;
	bh=+tysnyuvFVeep/ykQB1h8ITjkPMj5a+9toR9xOSgKi0=;
	b=GSfKH/78lx5BFqKXvlzd6U9lx4/vv5Q1Ix9g7IFCrsS6tVwidUY2IbYX3K9AoOsU
	Rs9/kGhXYlA/iCCCdxEMbeFP9E+jE1FtX8m8ty1Zx9LpW2xPO9PbrKPlgURefuSSDeo
	xTSZZJM76qx0PfwKyNAbvDMbrcMdOFmJiWjWu7Kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645006884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tysnyuvFVeep/ykQB1h8ITjkPMj5a+9toR9xOSgKi0=;
	b=kL1hh8CalbuS31q1YH/ZsnNgvYZmqXrfTP3nh5K6ijDS1pLTRnaz4Sm4BEuQSCgl
	XKq/A0HU14set07EtR2ey+TrLMWw0HUmnsA8yFr6uOYhy89Jn3qTJH/QR72C+SS+m4J
	t0sQfXblfROkghv9olahZ2ErHcd0+MOLISkOkCAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f020d0f72-60b5316f-f99e-44f2-a1a2-c05d3b8bb8a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b84bfe4bfc896f9e39d87a90416cd36e830c4d2a894685bc9efaf369bc9e5e3
Date: Wed, 16 Feb 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645006884
