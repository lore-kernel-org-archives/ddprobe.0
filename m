Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E428F15C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646078485;
	h=To:Subject:From:Message-Id:Date;
	bh=IjL7VntMQnhHQK3iUsPcn51sQfWnppSA3mi8L1MsZTc=;
	b=Zryq2cGKrrkcdoYKopyslzvnlCyxUVhcWluQCcaYFb3K+7kWeDH+kWZ2QvsD5hP+
	5pyJq/jM8fr4QKWSCU/P0pP7H/qj6MEIOMF0L7rQSDglQB+bzpfi8Fu4gGFGLWOi6MP
	iFJVV07hCqeiGorBS1M/mux7AyePhJFoshQGnx24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646078485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IjL7VntMQnhHQK3iUsPcn51sQfWnppSA3mi8L1MsZTc=;
	b=JXHEaXt5PazM2WyP7q3w1hLOc9HGHb6UbsiJhzOmiOxAR/1vKRri10BAam+F1T5V
	HGn2McJxr1lY0GKbcIZg2VGWnSxOqk2CV1cWJDwJ2GEbe2AfymAjPEEi3g47wySa72z
	IECTSr67i1o1DLHF07v2RXuTXDjhz7F5oR48R7ZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41ec613b-21cb4ce1-b443-4617-b7db-7b98187bbf85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0b755c593aa123e8437b0dba93b6cdf5cb0b470c55318c30c7a56db9400176a
Date: Mon, 28 Feb 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646078484
