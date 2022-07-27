Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CBD2566
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658943053;
	h=To:Subject:From:Message-Id:Date;
	bh=OCjoo8aZwgKn+tGhV5DYPJsDCL/FTwvH/AbBOvCQc3Y=;
	b=IfsT98JLsfIhuRj3ViVG3c/613aHYijTY1lBhztQsL2BXc1q3gPWLiBNNhQKee/j
	Npp9+zOlBlLzuKWlkqdzrJP4aKlqvTbyuuJ0Q/Bx6pnOgccBT4ToHayM4oSXvuI2/Ro
	c7x423c35Yw8R4RvrFj3Hv9y+eTeIGA+OMlah+dE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658943053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OCjoo8aZwgKn+tGhV5DYPJsDCL/FTwvH/AbBOvCQc3Y=;
	b=Ucvg2xNKvL8XCWaoCKHhOZccCUuiHYuW2zCr2XGAxLaaNyoQ83sz8EV7prebGiZI
	KYWAXfG5yWf80Rf7xRg3GtmvNOTLhzArOJFH0Myj/Oj7Z/xO0lqhLAjjpxhNPmlicfI
	xOn/KEMDOXnIJd13AEfE7ZNXdm510QiUBW5XmMfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240b61b47-6df264ae-0aed-406d-adf9-c86c084e348d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a9333e19d9d5315ae17c8b8aa2b10d8197de09e2cd6c3b303e80c142be8c99c
Date: Wed, 27 Jul 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658943052
