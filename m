Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B4A362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 07:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652512139;
	h=To:Subject:From:Message-Id:Date;
	bh=QieNVNMl1Cdf8/bDySXkF4GZxs/LOaF7IQ7WQNg0e4w=;
	b=WjIH/37ju72fTjzcZO1EfXu7OydbwFxHmlj3H8XjXXNTCG5Dyyfc2jLoyRHrNFem
	3nLiedM7SdY3fw6rKzuPMurp+B8atqHHErqB4dExuQbu62F7v8kXLms8qpPFUWnRwye
	Fxk3kZQxuJhY5Y/COqtBm0TfWERqVfthTtYLWH3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652512139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QieNVNMl1Cdf8/bDySXkF4GZxs/LOaF7IQ7WQNg0e4w=;
	b=ja9z7jbPRqTfv4oCXfH0Tam+kcrXRL10VWBFlKgIcZPFY9BSrB1C04FNIqtCzig+
	bJRX3EeqVf0e2Agnuuh95JqWS6ul1LomdOG9LRVfO6Tq4pScNu51SSprSTgyJv8a1vo
	HnZQMDCBSPjXv1dizwY2K4IL3KwJ77MKmXJX4/uE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1662820-272ae2d6-ccfa-4e27-9e42-c3887976b083-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 645ce45afeca7f60b7272fd2264b0d0341d711ba1b4c657c4368433698053098
Date: Sat, 14 May 2022 07:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652512139
