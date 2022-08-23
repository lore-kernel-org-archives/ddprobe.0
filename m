Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61933A20
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661228452;
	h=To:Subject:From:Message-Id:Date;
	bh=GEsKgylROze19FRO8svV1imYomoRpkjJHAfjI7NL5AM=;
	b=AuFZJRexBBqNaAcAltoPjrxiWi7o12m8qozh0jCGSzCMbr2h507BRhrLUu2vUTOm
	QqckNYuII4ldKABMLaZwYG0TzsRa7rM9xpPFk63doo+nCQawhvSV7KLAuOnYkGjhpuB
	WZ384H/2UEAazJvqhj+3Td4Qv2Lt0zQ5XRADViXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661228452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GEsKgylROze19FRO8svV1imYomoRpkjJHAfjI7NL5AM=;
	b=DFR6M98k30iQUF0HXSfXctSDqPAK3ou3qndLxWBUa0zA+rA74jX46aAVLT94eKwP
	ohz1k5EQ1WXlKJx0SI7EhDUAV1lj5LcOd0jsXOEw6ZaNP0fI6KDC6XA+6Ln2Qw+8v3b
	kJ1so3H/ECE3D+onIaDysTOvZ3Lj7VluovYu6pGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8ee8aca-231523ca-2d26-49a4-ae90-7ee842fe4096-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79e884d264956fd1589e0efdb0c3301fdc1a64d0e6748df15fc01d9fd155f2e5
Date: Tue, 23 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661228452
