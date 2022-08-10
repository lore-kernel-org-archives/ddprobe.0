Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EA817EC
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660137053;
	h=To:Subject:From:Message-Id:Date;
	bh=rkBZ/KIu7k9990m0YnoUWZG2UdVZiNDiIt+XqSg5fXU=;
	b=g+SKRpE7L9Gx0sHFHbMT0sBUmgzkVOi6jC0y02o/fnQ7fh53KDTz5KVJr65RtBN/
	AvcMx7+y7lYC883kLUStNg5tIJrN7lO5au/t/XKvpgmRqcSY1FNcGBFye5tFkPmG/IR
	lHomeoZz/+8TztR+StA/RtdkJQHYCXdh958rfcEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660137053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rkBZ/KIu7k9990m0YnoUWZG2UdVZiNDiIt+XqSg5fXU=;
	b=NqNp9evbAB5Wa0jnZLXtm9j3mPqAYqLCJjZoOJ2ofgNpooulqHpPkh5zjJBfqZYR
	0quNIl2lH5vbaYtSaJnpsguTGuNiO/U8KMAZYpOoi207wtaM2PL9DAXmRYShEIo9yw/
	1ufmwnc3HHKtB99EY2mvjlLUjpSAqqV/tA9ZaZqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287e119ea-5ab3f0fb-25e6-4245-8117-25d746e83de5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3320db07f817c4db43109511045e872fdf039120b897f5734cb24e3487a9ec71
Date: Wed, 10 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660137052
