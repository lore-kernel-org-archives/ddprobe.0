Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32287B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657468612;
	h=To:Subject:From:Message-Id:Date;
	bh=5g0PgrOQL7cMfWG5Cu5Rs2f5zNGDs1XQtQpoYFcp6Io=;
	b=f3ewyj+DqbSiHXvKksM7z2ZxFoyJFzGRhM+6r/U0+flNqoZ+oGe6hZ/kepIhdeUb
	2uICupfLzvV843X6aA0BqDnTn6pn5qb3VpgDPapjgOREV1sNFlcQFyfGoLaCqZ6PgOu
	jvOSw7KPZEhBT7ghwruhmZGEAKu3h4+mMLZmlSrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657468612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5g0PgrOQL7cMfWG5Cu5Rs2f5zNGDs1XQtQpoYFcp6Io=;
	b=dprBY4jlwN7ca3ELWQDjrzGBV/eClNsxQ+E33Cf/DlPGep41oL4/2k9CSIT9Bz7F
	wbLANnHg7bZ7OI4ZKH7M1XA4Mi4gzZaFC1ScV3xCizVGAEVpRvXTM00Mqm6yr9GVqad
	wF9gKCcu/yPmrBAV6wb68lWxvyiU6SnagvEIljDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8d3eed0-48ecaec6-4a80-4bd3-a494-f042d0cff9b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7fb0bcaffeb3189ad64cdc77d5eb4d94b208277d3438ea9a6e21e8a3dc56357
Date: Sun, 10 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657468612
