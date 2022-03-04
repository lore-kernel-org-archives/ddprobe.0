Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFAFA4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646394684;
	h=To:Subject:From:Message-Id:Date;
	bh=/rL2j24EiZNNd1vpULBli2e0Sxis5mUR6gYHgrbFIGw=;
	b=V633umXP3X9Tu3MFxJyckrH/ME+PvpRcrFsEi4PU+lpEDC1n8+eaDObYCRilec2J
	3Qp3YYOiMmW+wSgST/qJZzMd9lagiWvu0jFvdoZAemj4VrdnoY9lgJW7cOHQ/q4GlqD
	OdVwuCUiaKrPAZ4BlODDsj6C6GZ10zSitOmQUsNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646394684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/rL2j24EiZNNd1vpULBli2e0Sxis5mUR6gYHgrbFIGw=;
	b=ZQOoLUW4S+KCSjdCSLEjc5FX80f+ml2pILmx+LFEH9ZoX12+kGDIWDkMIGxGGi9S
	mw20V2IpQMuqcvaNIqEArEhgT+fdbAkfPnxQBBLCre4mGuhX4G5oEhorZlCML0AxflK
	AvGjF51P89JkO4BdEFSfDAb6fnyJRDWM1eYD42S8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54c5355c-9d65b7de-0af3-447c-8d2b-e6f63619a043-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dd0b9ce886d4ed5f5baf6aff1b823502b1dc62a64ccff59d027e33059d815d6
Date: Fri, 4 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646394684
