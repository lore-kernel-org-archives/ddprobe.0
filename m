Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258E97A
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 03:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653967019;
	h=To:Subject:From:Message-Id:Date;
	bh=nPvhFNqGm8qva0oHqXrq+nVVuA8I/YDhcrrbl4mgkJ4=;
	b=Dso2bwmV8XjgUhuSmrE3cMggvwbVOcca+YlAeSZu45x3KLgJEhng8jBr227EsjS7
	KYcoC/0V39JlmWjKSulUErQVoA9ah5HJzQpNQ9+jrv/BbT9DZRG4Okt2+asArN0T9Yr
	UazeVjifSDvOGj7e9SBpBjQKjk4t4BAwhoV+nxb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653967019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nPvhFNqGm8qva0oHqXrq+nVVuA8I/YDhcrrbl4mgkJ4=;
	b=KGM2eSP18u2bRS6YCnzL+myIYfUWIRYGKUABLj8NlbRcHo//hSPjVK6Sy61Z9737
	JQY+6GU7DDZHvp0hMhXkjiMojUIRgtmATItV0hte92sDgavAbRGY5EHirwuk1sFTNuk
	g/B3vQcyj73La6/qQFH5h1sUA2gkmONp0SZ4iJdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181181ddd17-32f45d50-011a-47f6-aef2-f17763ea3793-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7a2dde798594e07cb038d8b33da492867481a276fe61c0dea2f357a199e22de
Date: Tue, 31 May 2022 03:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653967019
