Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F7433D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656426412;
	h=To:Subject:From:Message-Id:Date;
	bh=aVjKOy7A9/Jb7HwK7Kiq3shBEhnjrLfk2gPwAlqVwWY=;
	b=Dvh9Lc/L/jnWGorsdj+VFOr0hDF0dt3H3zb8EUvWBhylOYeihy/w020QJHKv06I8
	vIN/C62ITvLJI1r0fJhLY0apjobUR2QUB3d6NUpDppHXhCxcE0jupJeFVFvZcFuJGwU
	KV+HfZA9nIE8vA4DpeTni9t7H56t9ZBAcLXKL64k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656426412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aVjKOy7A9/Jb7HwK7Kiq3shBEhnjrLfk2gPwAlqVwWY=;
	b=Lp/nf55a5A70DtcxAY+QeAAnVxeNUuUyg8Eg/99XzAhFIKhZPmQW7QwNFcYX/pQ/
	g9G/hMG+EZoxNsQaFJNttbufBhRK/CPe9HSUhHtvexSJHf++pcVQC3AzrBLB/sGP0QF
	U6/rURFaZWzFx0EDY0saOaufqQFwqB9zI9dZ5cd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aab53932-f3a235d8-60c3-4f0f-9c63-99dfc5acf2fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd6f20edb7853f50302ff2e75b4587e159a7cc38e1f8a6279d4e68fce424749e
Date: Tue, 28 Jun 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656426412
