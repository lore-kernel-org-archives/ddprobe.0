Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EC1A5C
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 21:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652650079;
	h=To:Subject:From:Message-Id:Date;
	bh=X2ZW7/QPjU0VWpPXwls572p6+c4Ba0Zd/9ZlaPNzRR0=;
	b=fizir82OfTOqFQpqz3CGCbNVlSOY/M8AssnFPujYG6km8DEjFJCyJOTYdGZRK2oR
	pf+RC9aTPrAAt+7p3wIdIiO9mSseMfflX6w1TUT2PhNggIknewMfeN5Tw7xx6e9MQwM
	jQtEB7mgZyD6rAE0QqfnhnIqKTp5Ktj1q2YHYfws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652650079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X2ZW7/QPjU0VWpPXwls572p6+c4Ba0Zd/9ZlaPNzRR0=;
	b=GBZzw+3tZMHcIFEwQ6l1B1lW7Kmgsum3VAwbfE/0P3bcLjvv4Rs+GYNxE+30uf+p
	V0VVXrFpgJ+DQfQ+xjvnDFmPN61oiy5krvUUgU8oOCnUoJzA68rF0pURzLgYMR+1jau
	+SQJJNDCURN963RFi4dV+G+/oCtrMWwimlX1maf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c99ef470-9c1479a2-2ba2-4e24-8f52-4bd13969e529-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06f572d8bb17f22fc6bb0a394eae18742f2d4d331e1521c46b8ba81f7ddd8f87
Date: Sun, 15 May 2022 21:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652650079
