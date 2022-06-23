Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D251849
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 04:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655959919;
	h=To:Subject:From:Message-Id:Date;
	bh=aB6qfgP9vpoXLlkekS8feNZEgQ1CcqiVIEbORCH9GAo=;
	b=ecYQeVYtvV8+KRM4SJajEw1e3+86suI54Uw5ZkFPuR5bVYcHqZzAujnXIS/6FXor
	BAgRh+1/d7t5+zNe2UuDuCEA4t287QgpW3Mc8p6JCA4V4q91xEBxphgcCsmEDz8PyJf
	iQMnnx5xEymZGrsa4Iry0kMEyNaTlySFkS+1AX8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655959919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aB6qfgP9vpoXLlkekS8feNZEgQ1CcqiVIEbORCH9GAo=;
	b=KRCGD68i2IUa/zb/aageWzjHm4Tq+qndMf8WfDFCzoXOJB3L+N6tI58KMxKfBHvt
	2DFgh8e0Ym33koQpODOYOGkyXbEq7pw8vf0BnExZO1MZ01b+lQHHEbV3PvSxnhJjW9q
	+llYbLbzwGTrQxNXKCrhgsYiXFsLQ6rixBvgEY/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ee71ad2-5eabb5d4-92c1-41c7-8f4f-7faf2ad26420-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 870ded8acc115e151544179dd24d49a0db87e06146974c6bfb267dad6982d5e8
Date: Thu, 23 Jun 2022 04:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655959919
