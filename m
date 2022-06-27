Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143CF17CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656294412;
	h=To:Subject:From:Message-Id:Date;
	bh=wsnRi45668TKX+eJN30dLY40FXNWzC4QSS6BTqAocG0=;
	b=Ro1aJ6DPnn4qb1PUOrIW8/58SBPpFFGs4ZEAYvxQd2nD5NywM93NAnVKQPQj0QI/
	P+GAyW+kTK/LB6wtvGc53b1/bl3/AfYgTw2gcv4/rm8G3R/2qTB2c+KvfvfqTMdO01k
	BaGfEXfefYUtc5zmSIVy3ILSbNDtRgLiv93HNTXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656294412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wsnRi45668TKX+eJN30dLY40FXNWzC4QSS6BTqAocG0=;
	b=ZFiN1jnPEA1vdQFJsg3AEt6y3mlnUQgqcCiBDUTdIDpG8+gmuX73SpmsfLuBD8Aq
	SUy99u7t+nHIA1a/ClD3feedr0HEkum7KbGiJr4PvB2ewOdCIJPiFkY+pJppZrAnwVj
	tpdt2sD7GG+WjE/KHLUOeYABdpreuRQvMqoqXUEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2d71023-8b26b990-02cb-4b89-995d-be841953ceb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 888e0dd70fe2bc06c0664d3775b5ea94f4c3ea48f662b8fe988593163723d7bc
Date: Mon, 27 Jun 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656294412
