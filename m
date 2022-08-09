Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911BB46AF
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660080653;
	h=To:Subject:From:Message-Id:Date;
	bh=2xkJW8Wma8ngRSU1Pn4CTcxoZfKxHljbSmfJ/J/7D6g=;
	b=k7F+tQzPrJ+7HZX/I8nG0TKS8GWQncvyzazTgNUmR936O8fEkl7135NneLjfQBY3
	Q5d8To6gUMXOX9oRMWn3wbBp/LHtwPqe9BAdAhH2PdxBDaOL9xRqBBKIyKKbhmaAZ/n
	UcIGXfG5TfRt9kG8xKNWftw47XPT96r7+vnVyWyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660080653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2xkJW8Wma8ngRSU1Pn4CTcxoZfKxHljbSmfJ/J/7D6g=;
	b=EYmi5cPNZNkIbsz9ZZ2CO7/cSWpbJJdFnLacqGTHMvxWr/UvxVVR7b1YK/3SWScF
	2yezlUXn/pgW+LrTWZKeHAqziFqCNwp83iNudrhcchvHoaJOVXmD6YfrjxTqZ6hebbk
	1ufAo/i2rK7PMfCGYW1NwscK5aBleEefrbdC7ymA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018284848154-3a9117ee-2be8-4066-aade-e2589ed439ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b1afb62494d93c40e1f458126ee0a270a54445793074741b399dd20924b8522
Date: Tue, 9 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660080652
