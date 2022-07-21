Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FB51FA0
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658371012;
	h=To:Subject:From:Message-Id:Date;
	bh=m05fhw547mQxOYMBT6j8Hb1SVOYtZebiM2E7cvw6YXM=;
	b=GC1EZ5hez/u1yY60xJwk2t1sNn2WoBSYwE1n/KW8Mwyf9BotPN+fk52RYd6qU8TK
	/fbB8M8wqQXYr3Nf+zKWyPJgVY/GPMtvXgArUaxqlTUq5DRZqlJkxJBFuxr8jkCzotj
	dfMAyfuKTQ9T0c2WZJSm4eWYAqp81ImYY4eqiCxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658371012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m05fhw547mQxOYMBT6j8Hb1SVOYtZebiM2E7cvw6YXM=;
	b=QxtPTnOOdpQUbKb/KX9xOkums3E7U+l1ms0dC1bQJLZJXLGbSb9quQczc1EajlGR
	inOybfK2WbRTSHjDk+o0mVYolERpXqcN7h4YHJQEl+VKVwMZ4uAOtnG0BYXqHptXIWc
	b68zV01wzUrrjYeXXrTLgmQGeA8VeDtSd99uG+/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e9d76b0-06887f32-072b-444f-b83c-e80c69f5a789-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2113fdba20575155d8df125276ff97bdb19e5fb219c33d70ca0ef51b4e914b2b
Date: Thu, 21 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658371012
