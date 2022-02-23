Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05F67B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645608685;
	h=To:Subject:From:Message-Id:Date;
	bh=+7yL2WrX0cxH4cW/e0zl/kHwuBxZaJRWUubHkYsjj9M=;
	b=a8qUF6dF42qbiwjx+uf7ZQRZA2FQh5TpyHohHS5OZdRrn0PgUfTc5zLshiUueWu5
	zWMnpbV85jrIfx7z7eJ+QtlKtVyaURkgn0QPW4+6+/K5IpJLU2Uv0IeLL+0PH+uBiJx
	AO3RfGsKsMlLQ0INxgEyMCN/lEvbZjlxf6u1NpTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645608685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+7yL2WrX0cxH4cW/e0zl/kHwuBxZaJRWUubHkYsjj9M=;
	b=Ugz5vQB3+A7MEBzG3dwfWfZ6MXgT8wLzJubN3gN21GAvOdbrhx3+s2FEQNB4NUr8
	tSHW9bGPuJIb3PrmeMe0pLqYvcHBhk4K4Y0vUCHPe67NnUvrKVlciNQaCFJy8nTXRgt
	cU05frhIcvVb/Ld0ncuDMdCI+5R86hjFUXgUQpjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25ebcd12-2d0e58a5-3132-45d9-86ef-e09236efbd0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4853dc80ea98ef628b5ae8e0ea9ecca605f7012aba224fb4da04fecd257f5e44
Date: Wed, 23 Feb 2022 09:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645608684
