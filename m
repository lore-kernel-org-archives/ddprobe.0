Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF697A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 19:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652471339;
	h=To:Subject:From:Message-Id:Date;
	bh=9VQi7TN4kD28C3n5qNp2VmQrZpdTE3SSzMKAizB5+u8=;
	b=E/75aFs5rvese5pwlzZxZRwxBNM4yf2ecEvh0zOZHDtq9FYhriWk2qItpxocF9qv
	DLqTR1J2rBd8uLKkUCs93Kfc38+oWcUrj/YK99HW07EIXeJf6ObltPr/VxQTSAaIlfw
	YfKtOBQRdlxCBUqpwjpFtp3/AuZE8nPjVEJR1mzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652471339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9VQi7TN4kD28C3n5qNp2VmQrZpdTE3SSzMKAizB5+u8=;
	b=iUgb12xY9GVvyqKRxdi8bgE28JzQlDWAUkVrPuu6jBWtvn2PwHNpvORJVW2IR215
	xexWbHH6GSG8dP9cBrkR5vU3yBvo6w1Qoo1jyubyOFHzis3KdXZ9oqqvuxPVA+K+dfI
	UdHwhFDRXUIHtMPzu7+q5oeOqkQYSDVh+VN8HZcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bef79962-52c5e72b-1832-4345-8e0e-85223f1c98a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 171c81746d63563c6cb1b7b210742e06dc82bffc65c917f4911fc7ccf378a697
Date: Fri, 13 May 2022 19:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652471339
