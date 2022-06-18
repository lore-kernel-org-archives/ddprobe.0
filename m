Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61397B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 21:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655588999;
	h=To:Subject:From:Message-Id:Date;
	bh=hf+nxPOVxR1uZLuHfjAEpxe9xbIWqzbq9pfXpCLRZx0=;
	b=OLSbRWwWD1+g9qejBkYeTlxIZtvlPc+6F3+gVjIT2fyrYALbGFC4fidKJFFdFQLo
	nD/C20imNgIhLCnGFdZpQKQ3/3f0YoanCb0O54bP4YJZETwpfISavcV/ArFXtvEP/Rj
	U/reqqnX9I1zPjhkNKcw5jNnVJh9rTHhnCqFamS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655588999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hf+nxPOVxR1uZLuHfjAEpxe9xbIWqzbq9pfXpCLRZx0=;
	b=dhYNsBfdSt3Vs81CvJbOMG8S6HlgCVWnACb4g1YezH4T2zHlVTeguHleeJjfAR9x
	fEZZ74vLkRs8mpZ5DUJLavIQSRkLhFvLwnLqalTE6Q63zjnZC+pExFtWBsRErT5KwYf
	zKbpIUx2mBIxr84HUpbbyB6vUJFmUAQsq/M+TLIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178cb5065-bdad7664-b2a1-40e3-b21f-fc938e5ada04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7e2ea2baba19d7983cb64f5c528218e12d1e1106508734739b33874958c3a6b
Date: Sat, 18 Jun 2022 21:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655588999
