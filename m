Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54B02581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645442485;
	h=To:Subject:From:Message-Id:Date;
	bh=CBloJOcQmu7KzK4o79cT6bYpWrRDSkiYRCB7Ekfw554=;
	b=k8cv3ph6GcxprbZUXKbBtmKOH6s+JMOOIq9x/qyDF63NAtMagedGl2Dn87yvKKAV
	24/sjod1rn2h1aOMktTd6KxikkDH+NDv5XzV3K8BVk4QCgN8mUKRZPl52sHeF0bOmus
	ejXkcdkO+UNp7S8gbCXEY9ZBt6HcGsH8sh/psN1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645442485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CBloJOcQmu7KzK4o79cT6bYpWrRDSkiYRCB7Ekfw554=;
	b=BjD1zyB2nralUHeTljvDPsNqS4rtPhz2SR1TChYcrrFLg2yDApQRmT3FHiNRH+GJ
	+bFqwRrwcCcDhwUKq2GpKlfJf4m14rKI3j7U7D9DMMsGFi10FQgBpDvVGaAmPpbG9xp
	zpLRs/WGifuiwpEyVbp9Aelkv8YZnhx2/oI+ALx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c03ca1d-a304823d-31c2-425d-9eb0-bd91b831b7b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 528f8b8cd010bd2a0637f3c49762901447c29e9b9aaa8ce0eaeacba1541318fe
Date: Mon, 21 Feb 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645442484
