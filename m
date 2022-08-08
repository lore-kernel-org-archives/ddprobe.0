Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2473440F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659999053;
	h=To:Subject:From:Message-Id:Date;
	bh=pB80Mceo/8HWKZdT54Uy+an6zxZxbKWQzBKAawxDV9Q=;
	b=kM4eUJwUY3knKpDTV+RCLxHUxWwYhoabFHUFhlhGyC/Nn4dXucgJ8klm4QgGJf3f
	ibeEce3Fwxbq0SfYiE2iQG4xtYNQEgqqG8sy6IJMWMxv08Bam5SwfGGLgFQmWQANpyS
	MxISIEilbeFRgR0e2r2LwOyk7H4lLncU4qj02LWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659999053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pB80Mceo/8HWKZdT54Uy+an6zxZxbKWQzBKAawxDV9Q=;
	b=OsXnrWMx1OaTjmHQtCqBIFx7oztm6X8zsYZuJZS/PVSafIxy68iUB4rASupVL7g4
	yXUelwR7W+xoEfy6GXG/fnjZZ+xdzsmcU1pTvPSBFPhfDI+uXGWW5HluWLorMsFN7MY
	e5ynxQRY/LAktAmd4y3nLAGbxZbNpWhqE9/PPJUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827fa76396-64672d4b-e202-4ab3-bbca-7e2d6ca90f21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da2798c810437a1dfa21cd021d29444ae909ce090e66c2c6c9dd6b61a975fdc3
Date: Mon, 8 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659999052
