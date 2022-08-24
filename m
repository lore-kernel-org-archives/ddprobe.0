Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EEA6714
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661361652;
	h=To:Subject:From:Message-Id:Date;
	bh=PUg0nNRaLCs0GbFh+9GMDVhA7/h3Z7kvmH/hEufxRTo=;
	b=XmOF49ZrXcHgn9BMfmZ5fRN1OLz5DqomZHBgEGcH+vPXL1gmF2kGlVzf4qzQGgRC
	AzI6/fiTVVcZxP0KasEOrOtnV9hKX4zl0zSa4rrrBF0+hQEgP/2z6U5mRjy6WGzGTdr
	qX4ZS1e862LIzRtJYNCkUvKjVdLugQ8bwrV+CEFw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661361652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PUg0nNRaLCs0GbFh+9GMDVhA7/h3Z7kvmH/hEufxRTo=;
	b=eylT7xp+VfTyGbHkJJVART8OXdLhyq5sorbPJvdeffB8Ps99TV6HSj9hs3N8wCrB
	8eyrPod3oWPmU6i9GOoNYklKBssgDuWOPfcZoN5Y4NbJxS4U3PraIQRA2nmGkdhEsEN
	JMtIk13I7qkeBb/0mvfYcAAUXcDHNL3IkMy/lwO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0df034d-b6cdc082-aec2-4539-8c2a-0447dc4f785e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 473154838bdfee884b87b96331d68cc8639933f137611a0da22d25ced3022a39
Date: Wed, 24 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661361652
