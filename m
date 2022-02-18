Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6294D2F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645150285;
	h=To:Subject:From:Message-Id:Date;
	bh=KuyHPHUB+f/OlITwJ/gRZHgbHLUEo6MeDf5iRNPnzTs=;
	b=eWv8RzsPmwIIJbei9+HBGUXPA+PGbR73iGcLGgBBZqiM+Y9oSRZvzK22bcZAXm2V
	DMQqPf3S/+rokb9g/Bk6tCqjv1LYaSIsqNAfxbhD6hHMA0tO5GJnrzVi848Q1GBI1yi
	5lPReSwUlgqipk9+JqeeFyVQzFSAB8qH36j+wGMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645150285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KuyHPHUB+f/OlITwJ/gRZHgbHLUEo6MeDf5iRNPnzTs=;
	b=WuMLpSLtvrr34+VQ0PlseMpVB+iJFR/n8145AA8DYBEmqaHjT5tOjcz800IFg/oi
	jLffBpnruC3T9OTtgVby+KkDzrHWePnmCD9wE+jGJYex+CNR78WK/xUGElN9K2ygUSc
	tAK8B3vL/EP8+7y6kCjoEm4fQB+EMzPzDAh0kvAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a992bff-c7d8c950-9b01-4e05-9d6d-07eb3f8aee3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13ae68eb9302b792bfe01045c35e2635fd97e03fe35c855eedf1dff7f40cd9b3
Date: Fri, 18 Feb 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645150284
