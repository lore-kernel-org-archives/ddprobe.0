Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F2D7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659394252;
	h=To:Subject:From:Message-Id:Date;
	bh=JDkIh3haa0xndpdOMPPZ7TzevdXmzgumy3wbNbCvHF0=;
	b=Io07lO+rMhZwTgMw6kZ25wCr4P3TWfLHr7eSb1J+z4APu3oIClv/9SNk5xWRMMoi
	uZYUp5LEQ0T/LmqHDZOHD6QTWYAxpN5sxE35+lDbcuoUjEWAMYkg0flL17Zxg3YygeT
	I1aAvxDsW1SPGQXcOK5ozGxlaJ2DsiASCz3WzQ/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659394252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JDkIh3haa0xndpdOMPPZ7TzevdXmzgumy3wbNbCvHF0=;
	b=fRnRBd0oRybtY5ayGB/qTpDOxFaAsxw0BmNDGMPrgW+7C7lEhgJ4UAaTK7z66Uku
	O94GeJfPY0XIO6QHFdns8JCvFQ0Yyf7eygcp9sKTN/Jk65Q7+9mAu1V9uxLHuwQy2ka
	CR2twdQKzeaoW2Jwl3M9o25XAQag9iPfF9BKN+Ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b9adf05-7b1bba81-b59e-4870-a197-4251a6250d9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c30c7bed0ab48671a1faa439e9bacaa83fcc9173261acfdbafceb537e41f5ce1
Date: Mon, 1 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659394252
