Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5428D372
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661059252;
	h=To:Subject:From:Message-Id:Date;
	bh=s0+HlMXXwpAb2bKUicQnYdatDRju4V5GZ9i4A9lGktU=;
	b=P2sVmNHbRdZy3x6cQHQxEnoxzb5hcsrqgYetP87t9dw/JCYPIz0KWnWsDWcOq0Js
	ogTJMNgeSPkUyHC5bjXndiVmyebDqq2rJ9MOjdZarKi8kOX93M6dilAHa5rW5lCRFGG
	3f8lPDYD2A1wjmmXPN3bbq1TXa+AraVWB1uAf1bM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661059252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s0+HlMXXwpAb2bKUicQnYdatDRju4V5GZ9i4A9lGktU=;
	b=k2I+JIDPANUD+W3AvefrfudcshhXbJVA14frBnLzgSf8WVWsNUEYi9ubvf8V8EO0
	Y4clFztDL1y6b5oAFH84SaT6HDcmizdHwtVBHCrcXUivMr2rb386ZfKQOjjloErQvvb
	e/DSptnaND8w/5ZtxGJemIg9HaEChK98/Kfo0ovU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bed8c174-cd0c3705-0dab-45b1-ab08-493027d1a187-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25ad1cf450bf5396cb4b98f4ed2dfb13ea3c164263a64abcdac57828da0530af
Date: Sun, 21 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661059252
