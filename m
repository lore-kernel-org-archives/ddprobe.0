Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78A57B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 18:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655665139;
	h=To:Subject:From:Message-Id:Date;
	bh=mIbrFz3MNNOGKGHjYTIUSPI7xp7d3QjtN04/cRXc7cc=;
	b=IeTpF5adZ3rPQGTTfFZy3/YkJFJdeOO47KVsiso32EtUE1c1GNPUOEzRS3S1mNcU
	estaGP8my0koRRXk4CQw7BiHQFXRZL8xdbJk5IeWadGd/UJ4COLUBNaFYw3mr7EDp0L
	cjHGU1x7j4dvhNE4puv1NhE/SDIRIsvJqXhm1wdQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655665139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mIbrFz3MNNOGKGHjYTIUSPI7xp7d3QjtN04/cRXc7cc=;
	b=BZD29z3sqYQwLrxkACirLLazixe7ibgLu1mLB9F4heKWe1KYT7LC43RyVDfEQ+9U
	z9u4kj6I7l7Zyf4lzzRmiAL7VT9yIrrdqBESjnLUW+n5wL+7o8psckRlJLRowKhuCan
	uw5LTY2d11LK1bRz1hL9zG1Z/j3L+rUzKg+fL8dA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d551e2a-54e0e570-f68f-4ad2-82fb-02b75f5d8421-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26c1c72c3e0aaea7c3e12482a676b60e26388b8f5196d44dd65d6d209c6b8549
Date: Sun, 19 Jun 2022 18:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655665138
