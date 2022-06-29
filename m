Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346C06AD7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656540412;
	h=To:Subject:From:Message-Id:Date;
	bh=DSHt7fc2kZpily/8R2cg5S3ZrDUy1XtwuXjPIUEymZw=;
	b=TldN48LWGJx/Agoi11B8AE51zBOwQyDhfZFMXyksUGqCwchcKgpH3QbzyLyYW8TF
	q1N9lNc0aFNDkwerAr/cNGQjggsmagqw7rit1Op3K4j5K0zgJDbJ64njdA5dkYNFyEO
	PrplnMWP6UTUUGYowT4idNMFaXkE+lAajCYyWs6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656540412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DSHt7fc2kZpily/8R2cg5S3ZrDUy1XtwuXjPIUEymZw=;
	b=XMYQU6H8fM1MRjLRfcE4nOJW4MjG01D4xhBRZn0bc42JHz8pYGIOCX6AkmXNNLKL
	PoQacfgIyBw5/HB7hNsLtiORDSHnWzcwA9cMSCyZ8b56uii/kB36jdTLtsyHhJBLemi
	rv2939OVOgVhReMhXJvyPLTXBH0UmI1zzvYDiNoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b180b993-99ed6d3b-152f-41d1-abf1-b7282dc850d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adc04487b93d34625c28d847b301b39b3e2b15e22170c8d13abb41f7a546757b
Date: Wed, 29 Jun 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656540412
