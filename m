Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4A74A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645985184;
	h=To:Subject:From:Message-Id:Date;
	bh=7lxiHLqP2bIw8xiI6WxWUHT+st/56XpoV0GsvszU3HE=;
	b=V7A+TRqCZj45O3QUsVddK4L4MS9Ck1w6jsCx+Y7OXVdXcBwCxi/1XIWHHFOq6zuC
	t2qDVhrAz7HSuqCgkcpKavMocFUkL64pdItulJNnaRS2hnDsQGLlFvXslHroNkzSzdn
	qcAZAK4niFKqJA/0fFfvYNcE0FIZLq7mwzGMo78w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645985184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7lxiHLqP2bIw8xiI6WxWUHT+st/56XpoV0GsvszU3HE=;
	b=a5U7WPZUzKS/tI3P4Wc6ay+VR8djdzDlO2hSOCQ0LtjcAM7XfiPdhgbHhqHzbEZ/
	eMA7sNVJ+2QU2XxQCfWMHfZWH6aeBUhfFZkUsfCyMjTmq4EZK3HnkwWIM2p9rODRLvY
	sRfr4LIEEwcyaifUur+Po/HfPd/oqSm/wqk3quIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c5cbbf3-17bac5a0-57df-40b2-84e6-70dac13538bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a9976ddb7352948fb23136d2838f2091debb9f62fc3a8344ca9a40af77b12e0
Date: Sun, 27 Feb 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645985184
