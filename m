Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654F27C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659965452;
	h=To:Subject:From:Message-Id:Date;
	bh=962/jNzOW+AYxhcyaZ1daxvKYj1487C4mBuxYQGl8W0=;
	b=EDIi4szaXNiPmbzULtTtpOg5BtAv9LHykRW7lPWxpM54m+eXE/KMe13bI4/5XAWf
	KAkubuAm+BHvvYkYxkG2Myg9IMen5qbGYmQIcixgBpP0wiXs8C+WZQ9jB0mDgkbPRRb
	ZS/LwfUOamHNRvXOjTOJ9fdp0RvqILD+14238z58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659965452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=962/jNzOW+AYxhcyaZ1daxvKYj1487C4mBuxYQGl8W0=;
	b=GNVQ8t5UYDrIwHlNxLvY7KYr3o9bjYG7v9oWaP4U9U6uZcWxUR73/7VogAiY3C0t
	CyCgj+D3PN9tyBMratgsnd2cr89dBeHQk3vB1aHMPCPJXjbVYSRThrDHk0/QpiVMMKK
	Nlvs3Nbkb0qIqUSsuckT0bWN8+ZBUP8AUrDi4Thk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827da6b11a-805c1620-b875-4d65-b6bc-93799e414675-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1692a7339671ef7a3be18bba0e51f882c776ad6de66ae712cc676cc5ebd5b339
Date: Mon, 8 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659965452
