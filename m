Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008837EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660438853;
	h=To:Subject:From:Message-Id:Date;
	bh=pwRiGGG+Akr+suRUK6f340sQAVJc0O4MZ9TqjIQSAgM=;
	b=AyDCO/G2AF68ammsRbj2HVUyVpwVjJEiXsUNtgZQbqiXLudK+raluoXIHtnB1u8x
	7RSXv+nSk5agutp2y2S3jlaZq50yRP+F119Lkf/nhH3t1D4p2PAa+WOdaUS6PBnztIA
	Uc6EpafQQLIUs5cP2T1D8G+zq4sBp2H1MAyYPYhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660438853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pwRiGGG+Akr+suRUK6f340sQAVJc0O4MZ9TqjIQSAgM=;
	b=RtYifc+8DhgiMAkzIEiG7PMuCBirs9Dm4CPMfipAozBNtQTB21Tp29+2Y1ei223P
	ygCa1oTtpT9tSdczwE928qWTEycVNtouaj/hzNN0l9kIk7zumV/PEuY0y2qx8jjfTiQ
	5xQ+gweY8V72OMNv7+bXAZu7mnuEYhiBafqw5vzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299de33d4-e5b81598-6b90-4844-ae78-f5f6490cde13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 513d9f0a0446ab596f49c2164e5fe30c098dcbd44dc927fa11e5f57ba92b938f
Date: Sun, 14 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660438852
