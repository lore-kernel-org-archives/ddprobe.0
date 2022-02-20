Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A7E28E2
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645329384;
	h=To:Subject:From:Message-Id:Date;
	bh=GOZBx5aXgv+UpiMAoUBV4r89SdlyRz3oCQccopw3Uw4=;
	b=Y9Ge6YnnR5emhJtftfvtHg3nz1WeAxs0nA9Sk3sGjbTppTXeiOZui8kSEnKILBCT
	pwEbU5SL2hOekykhIEXZRHqNJncTs/OF1oMxp1cWKh/UI/mXySp5gFuh8I3QeKrSS0M
	5rl04sB9snYwV966QC8WmOSkKfg7tWeoK2uxZkuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645329384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GOZBx5aXgv+UpiMAoUBV4r89SdlyRz3oCQccopw3Uw4=;
	b=gqcoLIjTqxxWkR5wYx3kNcg3PpcwkzW8WL0JVutzGD+rbKsuheGlh/vMgTbDBG9z
	UA4DmY7FNb0qvdJ+CyMZh3agtRckiD/OgYQ3JdWBaZek1AJD7i/ZPo7Z/pQmZFi0n76
	lyhXipJIYCTgz4hp3xmX5VkNFGZk+gXV1/+Nk4Wg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15460547-9343516b-a50f-4579-b966-ee16990873ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8677217e3f1bfa36b04d7260b582aa667a430ff9d0301177ec40be0425ef833
Date: Sun, 20 Feb 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645329384
