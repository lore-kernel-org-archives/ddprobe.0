Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A902E2FB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647465984;
	h=To:Subject:From:Message-Id:Date;
	bh=S71c0HjXOODKPO2gP5I7aFl6lA0kBGBhZPJPr8cJ7MA=;
	b=jdBqxJgELVtZxvO5/7ehaYIzHeWC59gBOANM8srifT1Z+UUvhnVTbiwUxhJpdr0T
	cX6V8SeT9yGeSuHU5HKbFQh7/CHu3rr9Hx/ZThwIeSv0x6YSzp4omJbaxbK9m28X5Ot
	A9eJyygKKZqrsYyhvVatPxXCYNuafr9vUifal1kE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647465984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S71c0HjXOODKPO2gP5I7aFl6lA0kBGBhZPJPr8cJ7MA=;
	b=dDqIE2jt2aJdRTv7u3Mbhdg5z2byWURadAJGC2+a5pyK9SIqhVd2sYoE2HCEjS5B
	nlgX95z7NmAanXVde8HwDHpoh9rIUjrpLAd2TxctabA9szqXtJGUMH2SsfazwT2bcoW
	kjosgZl2myk/9cAnZbIegVWzZaSPbunxQH0ms/r0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f949ff347-6eedce64-c528-4342-afcc-0d5bfccc0cc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e59796eda923dcfd72e6e4af17f2db23ef46e37e1e0b3e9ee8c1aca5011fc4d
Date: Wed, 16 Mar 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647465984
