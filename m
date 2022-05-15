Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB4B806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 11:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652615759;
	h=To:Subject:From:Message-Id:Date;
	bh=XUtgiBWDAHvBuDw5JoaQ4bgxKIh1cBngA7MwhQnReYc=;
	b=IxoO0xClLAv0K4aIWmBe5o7hy9GNiFYxb3igVpXdAvZuXyYHwdIt6fNHSGx9qePc
	tO41tOO7NMPkaIGdpqErjvKYClxqU6JUKrWNmgmEptLb8XHWLq2NJ9fqpwqj0bxJM7i
	WQrhyOvwHVDtvNoVLos2p3laF3tpXtkk2EJUX8Uk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652615759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XUtgiBWDAHvBuDw5JoaQ4bgxKIh1cBngA7MwhQnReYc=;
	b=ZisNRgY3nLUrVW+pLZcEhymq9o0Qesj/n7DmlDeRat88M0l4kCIg97iG908oXHyY
	4Udh6utJU03xr3tMIVWSrt5U2buwAufwGS1CqVnLOzwnzXn2U2N3UFGexLhcBN0MuTr
	Zt/JRcaYyPDi9T1vacwXj6aCwFd+0+fErjRAzvk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c7934642-acc7af32-4274-4a45-87ed-06327e78dc00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9087a84e602e6d8bf1de55cc14d7fb417517d81822a694e2234534471927276a
Date: Sun, 15 May 2022 11:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652615759
