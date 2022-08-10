Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3848128E1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660150252;
	h=To:Subject:From:Message-Id:Date;
	bh=gDpkV3dOYMXxXEOi52gd0dIBVnhEml3JdR0wZOdhlYw=;
	b=eCwyFmH4G5dT/3/EIXUKFfIW1Ydl65LdvAT6pspoIJh7YRRG/Llrus5EWA1wmN2u
	44ZyXWcAgppgtCVVLEhoFgNqWzAyiiDkKFF4E/Q7h02uw3w0TtKGhNs/tGY8Uo7MrUk
	LJ7RNNN32OSfFn6qiRAfKSPjbZ6q8jQHam0AikvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660150252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gDpkV3dOYMXxXEOi52gd0dIBVnhEml3JdR0wZOdhlYw=;
	b=jrhRY63K6yhIySH4Vj4bp+/rPh8CpFZJ8QEvOsmlHeg3793W9fq0MWYN/3qXvqgZ
	Z568RWxPgmQLoFkZaKMhr9nM8WC1FpxLn+Php6QuBFv2wMBTSK7gWdTlwXTwi1psuGK
	7UrX3RVV6WvPhWet2oLGfuwDswVQaq2NtdzSY8CU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018288aa8432-a6c7ac42-eccb-464a-b169-49229c8e8a67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7ecfc2ca5f8044c0c5afa0ffe35c5f1f27c1a916e403ce874ca093dc1afcbea
Date: Wed, 10 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660150252
