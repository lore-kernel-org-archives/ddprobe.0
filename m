Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E672562
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659719452;
	h=To:Subject:From:Message-Id:Date;
	bh=kVZsjnzEJv5Qu5yRmYYnCSafp57LCtNZ84Z8Fw2D4+U=;
	b=P3kLtP7jmtq2zuegtBdXDBDL8hWgnxRmH0X/V7OjHfS54hr/jZ59hz+v9cr13org
	4nES6iEPN5YT4JgDBQaQknVHIDIk9hrucSnjz6vNPcgn5+EcxXL6fc3M5+X/CP2Y0r7
	LIATkA9UVQ8I/ehz0CYF0nVyAW01xuOLFIvDoDzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659719452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kVZsjnzEJv5Qu5yRmYYnCSafp57LCtNZ84Z8Fw2D4+U=;
	b=XgnBf32pDu/UebAqJtJmgbsXSlHCdbCUaLzKALFS84JChFKJBaguPfrftDFjuvEp
	Jb2RUghW3pq/YaDyKJK+Tn0GFmwdAM4XMywloMOpvTF4RtOxnSjLULPS2n3L2Cc4kvf
	AaZGaXFtYNu7SOyjKou/dyuEREoJX2Tu9Ra+WNMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826efd07be-8bd95087-af46-4a61-9a25-e6323589734b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efd993b94a107c60a63e4dcf242e943d33e536a899441ba89244e0a599f2810a
Date: Fri, 5 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659719452
