Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6988E4F2F
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645246884;
	h=To:Subject:From:Message-Id:Date;
	bh=L9vi4HPSVhK+x+VeS/6/TF0ShtwTGHqD93QWKLHhMYM=;
	b=UcHcNHAGqebXasJsSHi/0EtTYPXi5+pBjYbZcOj22ymfSMNkahV5AIBDDfa8kkRP
	rBOFR9ZT464Q0c9Y/ypRjwJzrN0c1snmNnMbVxIZd5/+Zp+98P+AIMLAGmgb0CtrovL
	pd2MYIP9YKAO2W7pMephqOg8GlufttQXHmTbuCd0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645246884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L9vi4HPSVhK+x+VeS/6/TF0ShtwTGHqD93QWKLHhMYM=;
	b=cuVwK2/kOHk32ElQCua2k05hBwWEpXF4XW5Pn/urKLVkP1dpt3QLwqsO2wH5bZBl
	hbv2L5uP7xXz7xpLhJMHhv4rBFtGC7f4DgF9o5T/A/ttf2fQUYKmAefW0i7MdqzbzwZ
	SSdnN+beEp7czJiDjopwBvZA5h2TtCowL6+RC1UA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f105b2bd3-1e820361-1358-4002-abbf-0cffd01cf09e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9b6efc6eaf1b5f972d4e953bb9cef56e8feb6269dbd0cdddcb80c0a25e62f9a
Date: Sat, 19 Feb 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645246884
