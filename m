Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239EC20F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656312412;
	h=To:Subject:From:Message-Id:Date;
	bh=5tjeiHJ6U4fnZWmf9h+szEn1nkNhU+JI47CLPPl4aHI=;
	b=LRY4+6iXKUBBp0KQ3jwUaIL49nO6iowE/0BWTcAINjJ7RSps77fW9tku2fxUHeZu
	6zXrlaawev4PbeVFxxXqWwrJO3t03JmDzTB1v3a/4ptoFOlT/WR4T+iYt7OY5b2dYcj
	HiKQLVB1l7Cw1Ij5P9EOEeRhqD6wFuUa3rhBiveA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656312412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5tjeiHJ6U4fnZWmf9h+szEn1nkNhU+JI47CLPPl4aHI=;
	b=bOlMWzRgu98ZT+Mk4goGJzdb80plEmPvbGc5HInMDwHPaoK50UYEGlZjv1RnegOY
	pAsYvVoaSgFABs8v2X2DjP1TLPD28/ZEFmEtHb//+AdUI46u8kPqb/NtrXvDNHZv+T+
	xe2o/580bkQj2bjWqjjqvQmlqlXcRXvr0QzeUP5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3e9b8ac-46af88cb-9327-47ba-a391-3d44eadfe720-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba5bb45351df9616032bf6c16c3526868a411a5f54828c1b13afc9544a6e19cd
Date: Mon, 27 Jun 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656312412
