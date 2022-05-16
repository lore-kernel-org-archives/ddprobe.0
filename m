Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DA52F5F
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 00:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652659259;
	h=To:Subject:From:Message-Id:Date;
	bh=uewOITi5lTG0BzYun34jL1aKtcbZQjlTBdNRdI3y7Mw=;
	b=jFCk3aGPZTvMOM/BeoxITT5otDKm1Wq/PV7mFed+bAmPqpJ2jzdJwzr3MLynCydq
	x571fc+roDrHskngUd4sCHte+m8KZm3a+oqUyb5CsEiVU2nezMjiSDcj0kmYfw4XfeR
	y3y1EJ6bqYnL2zoP783Ju3OinIWr6a8DH3fHdDtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652659259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uewOITi5lTG0BzYun34jL1aKtcbZQjlTBdNRdI3y7Mw=;
	b=bLecefx2HBbVW/R5JSHH8sPWJwQc4y1Ot9iYvrXk9akC6ivOKcOmQ5PM5eMdZzFv
	+Fs5Mgum93qjnzuFvkAlCBStvFjhnQoKTN2/qFuD3QBiQYomsM9cHn1oF57fk74b5h8
	ShP2REHqhZ3jDmWg6Gl5QF24Mx3NAtBLdUQAgTsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca2b0791-552ee69b-ceaf-4096-94ae-593dd3aa659d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a84d5cfb549a56a20ca2b94348df7b3e536706002a3cbd5cde90d34d6efbc5a8
Date: Mon, 16 May 2022 00:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652659259
