Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA17E7EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645590085;
	h=To:Subject:From:Message-Id:Date;
	bh=243CGe1C0hG6HId1HFJsqFjIvBBmZeeeY6eiPRaIDbE=;
	b=KqZLChARf1H6tynTXG5XuZdzvrotuk/edaj0m493m6T4hmdXkRddNGNAr0+DcKq4
	JyuWNHPE3HTwPn9uuqkWedX2/v+B0SoTOCJoDyORfxhqUbo5fr/iIpXF70H3lOVFrCv
	t8zI0zC/+/zF7OAgT2H+MiWoRH+vyMugrFuKH4lc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645590085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=243CGe1C0hG6HId1HFJsqFjIvBBmZeeeY6eiPRaIDbE=;
	b=Q4IoeARWjxU+dz1m86+1mSr/cW4K3mBYj/TWbJk0MtTFlxZTqCa+BcKTUaXNLa55
	kDYSaIYn8dAc3mtfqW7aUmqcq6YyIrO5ZCU5BG/B9mwb5X8hQ2zNslr48InzbN6TeD/
	ivO31iOJ81y+uqkE0KtMqAx40GqJZXWzWmHHIj8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24cffd52-c6447972-4500-43ca-8a70-5937d8b25eae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 143a145ac8f7c36b12e89420a30c7645097530cd0934e7b86207f417274ff588
Date: Wed, 23 Feb 2022 04:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645590084
