Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A617B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645834584;
	h=To:Subject:From:Message-Id:Date;
	bh=+n1WzPFg67yjFzybdZNlbp2mwm9gvfEmkOIViZmhHIk=;
	b=ABJXPXV8pblqAVCBUMuuv6IOJXatN+vL7M9OcZt3vIWvmetVkbDT71jat3jY2QNl
	OdltTyahErOy03zJAHTlYgzFyXLg9hkjCgqRXEUJIFK4848Igqg+tf3jI4/432ZM0qL
	jxH0yBhJIJhBGaqj2qSsFX+qAhePCOcYzFiDUdaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645834584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+n1WzPFg67yjFzybdZNlbp2mwm9gvfEmkOIViZmhHIk=;
	b=AnCqrrtv0zyPG/ksf7rMik9X7LgjgFE6VhrzUAkniELwzdBF4fUO/UjNjaMRAVIE
	+WRTX3fq1YmrRpzmRJiGI4ZA/s3Vkfd077l66NYochck+vEYb4LDgWA9kAwuHkj33eX
	UBcONr+Z1I31FCGa4bfi8oHubeuGUfFPJOUmLaq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3362c2d5-88382693-555f-4128-866b-85c47346b11a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0eef84a9ce1511cfac66c69962d08239bc4abe9453db6e199291f1eb252ef6e
Date: Sat, 26 Feb 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645834584
