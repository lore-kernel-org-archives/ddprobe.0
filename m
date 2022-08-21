Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340043FE3
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661119252;
	h=To:Subject:From:Message-Id:Date;
	bh=ljwXmrcVhVybLWDh+U8xvyfNnyJnqCLm3EsfwHMZzN4=;
	b=h9SADe3rMvxq4RKFS809E7QAhU2+rHs4JHfuHxAqkVvJsbkc+F3NQkN1r+SadONl
	hvSbRprey/Eb3HZEqFdsky1D3hpLzplppKzXHBwo+72+lhrELmQNvQ6NtQexBJYs9z1
	wIYhhcuKyxwPB5oIcyb3XB1+CHksjcqvaw0a2T6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661119252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ljwXmrcVhVybLWDh+U8xvyfNnyJnqCLm3EsfwHMZzN4=;
	b=H7S4wanweCtR9YYEV2JkVbSex9oRkl5anw8xFzdwXey1QSYUsdzzz9zpPqBk5opt
	gn9Intbq3vkfyVeyYpHhPU7aL0WrJibGXerv8SSgijzsJA2so/7Bua/0VaXXgfq6YuK
	afXNfwwZYULce00QIR49z2DQ8cF6JqdeSQDumyIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c26c4827-7eccafb4-b1b5-424f-afd8-5f34836fc7d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 057989f18d0e98e36f554247e96ad110027db12d39bf3b3118edfb1094ab1bab
Date: Sun, 21 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661119252
