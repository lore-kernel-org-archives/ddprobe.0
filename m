Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC3D7A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657617412;
	h=To:Subject:From:Message-Id:Date;
	bh=4t2BZ+OO27twmhnJuC1aV9ODBgyQw84bSQitG+8L+4s=;
	b=TweIFbgFZkLHTHXeJsyJcq5lQ/UvuCBz621b8+mSCDeR+Hv0XPO9USiIaTFb4Xlp
	PEBEVEG9DRRcE/0pkzoufh0dQhXZ80idWq+k4V42VxRn/ihUmdMxq5+RY+T1kwbJvBs
	vlZ0LoxwG/83OQZuN4Zn4wn0RBNZRuWKG5c16x6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657617412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4t2BZ+OO27twmhnJuC1aV9ODBgyQw84bSQitG+8L+4s=;
	b=gyin1Brec9OOUD6JDu+GsVhRMIB02HXE55n405O8zAUcf6sfmbYhBDxp53YZusL/
	fydOfrmwOAOBcQunqvcrakuDmn3/8ug+doNBl17FtJSOVY8XokbifSydkuVYcJkxs+R
	OCJrXpwlSwE9dvR7LBTvihykG72PyiEVnUhMeSH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1b270ea-c3371e1d-870d-434b-9ec2-75bee6e4384c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3a2e04d2705b760753614668967e6ce13a4634ee6ebfb8b23a3c5392558934d
Date: Tue, 12 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657617412
