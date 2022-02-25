Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DF67A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645777884;
	h=To:Subject:From:Message-Id:Date;
	bh=OFkKWJb5eU/YHlSkF3uaGmDqmD8agwKGY+4qPhu0n38=;
	b=VnyZyCcwZFkWYhoDQTmnQRzWC/ccGWXrNKVui7fZEv193br01+uyKQoPZTjp8VEY
	XAPVXHVT2lImd4ban38xjBLRy6eliImwvv367kyev+KFKZRhXbFDOR6RBVwwg+jMGSO
	W31sKfgxRctCVX0iudkM1j3UFWbfrT/jRUSrQwRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645777884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OFkKWJb5eU/YHlSkF3uaGmDqmD8agwKGY+4qPhu0n38=;
	b=Y/0el78+gZnw3g2UlpjDWB8TnaVS7q6p8+vuoZrbN1KlFh6PauWBcblCdFjyQSEd
	lOJEV163qHkE5geuET5ZCinjWnacy9O7+dBeQ1ue31p6PURK8PcYacBPmBIEXFpCBcT
	PD/fcWcfI7uAZJYIbrb9QIhVeQv4h5DI0OayR29o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30019677-eb634a19-7ed5-41f5-b937-1495488fa650-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 541e41d76fbc600207c1e8660e0ccefb9e759a973016dd73a490ae5d066ed9c4
Date: Fri, 25 Feb 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645777884
