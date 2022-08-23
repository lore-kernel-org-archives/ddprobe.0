Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F59A3B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661238053;
	h=To:Subject:From:Message-Id:Date;
	bh=DClHvx8CkbQ9U87Zwko/i2C2KytSgxSNp+OLgNNjgiY=;
	b=HnFra2q0cGdm5TeBnTZif8lyVdC9v0tVudyj1zEDki3+Htd80LjY0UT2KBRabCN4
	BEGUpjEutF4GDryatCYDAQf9La7OudrrKdwxmmO/IaTsOifoT6JZxZLioAYXPqLtxhA
	4r5Yoyixz/4kC9WS4YdCC7+rmMPvrnyaARc9TVB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661238053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DClHvx8CkbQ9U87Zwko/i2C2KytSgxSNp+OLgNNjgiY=;
	b=ME5M5LrTVzqTnS0OT2C6imxxZsC13GncAN+gGuV6iL9kDPuxTVwpgadSvsG9+XvR
	L1oCKaPnUaapF6/8RcX3P2mS/xm7L5y1dX9J9oJDg4RakDWJ/sCka6f49qQSDqlnwv2
	WeUYdMmWt6OEwTJHhzeI/uyGpexs/x83uST+Nd6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c981071c-15b4d1cd-c855-40f6-9725-9abff4bfb520-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d835659d6bfdd5e4c58c586c6f20d6c2489c1fee5f7a15e4c3fa3f733ad768b
Date: Tue, 23 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661238052
