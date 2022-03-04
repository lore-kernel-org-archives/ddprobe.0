Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1A67C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646420784;
	h=To:Subject:From:Message-Id:Date;
	bh=k2cc2A7pWEl0y+J8kBlGBaVBM05C0qXNX5+y+PZ7o9w=;
	b=i14W4U7UgSL9nO2IqBqDtQIj5d/Rizw1oWNNsvfcdBNV61AihAv/9kKpq1OWFCoO
	Fj2FlVKUuH6r3yep47BHruYHEQ07VAj/3dvyaKyhSpZVPQfz4eIojDeS7jyjFaTRxnn
	s9wG5L3KrKAT9ySgeMH2iC5LQxWRTAmlXb7prrfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646420784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k2cc2A7pWEl0y+J8kBlGBaVBM05C0qXNX5+y+PZ7o9w=;
	b=YWL1geZTnmN0Mf1X7Kuv5Dpx48Fv+oqwtawr1PS4X5rZLvUVzp6+PO6QhNpu+OFF
	zyAbRj6JFHxLYuGpAXMVhb4qcey0HYacjIIpMV0DC7LVdCgaG7tbmgplOhJ9qeRYt6d
	AL54WLqR+LwInQsDIZpgkCtaF6P+Bs3P5IDORoD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56537693-663121b5-bd92-4fe6-b9bd-ed2aa7cadfce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f549869a84690844e109a923e83553591ba756ac2b38e7e28880d188d1c4ac4
Date: Fri, 4 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646420784
