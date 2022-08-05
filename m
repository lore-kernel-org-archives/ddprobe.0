Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B687C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659666653;
	h=To:Subject:From:Message-Id:Date;
	bh=imNm9210qKHg9VeeEHuoINhcjJAHOREmIWZd9Etppcs=;
	b=ZtjkNBuBuIK5YooWQC+buCfK8QeorlM96EbdhwkNBXxwTY3uzTVJJYH6C1mBYCsh
	+widppinf8sM4HMWtIBQxHSsVNHu37GhdpkbWpC1WhhAy7YzaHguwhE3kAwZUY2YvCL
	UrULfYLXCiM26UqZujN7jOGKgFv/+cORCLe2E/50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659666653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=imNm9210qKHg9VeeEHuoINhcjJAHOREmIWZd9Etppcs=;
	b=fUm1LmayMeg5IYxvWT1O36mTakadX/cT0ioqNap9jYZv7oEW/uzfyeEaJwQWiefr
	d5kX90i+3PrKzZjJzP6BOjywWySp58CUOqyFE9W71qu6VLSZIiZaBXlaki3ecKw+FK+
	JHHEOIgQo4kGCgLFefUqq2m6wdOGqkD2K11ntq0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826bd75d6e-90ac6ddc-da0d-4f3c-9023-a3e7f5fe8764-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b48a80740d75c81d5d97f887b788e7f74e6a64363f83443fae121cc29a8bab32
Date: Fri, 5 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659666652
