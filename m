Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39A21852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 10:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651314178;
	h=To:Subject:From:Message-Id:Date;
	bh=owSdMY7SNS++ctcpGr17yrXDHqsDnJ6on8c6jS2Cbmc=;
	b=SLpSXe8IbfO7A8QI0p8lA/SJ1Xxxxbi6O3b+har68nfnEvySqETCgwuF7hwqmk4u
	QHGaiDp74qtUJGJFo8L9aYJDpojtTMnFz0LS6C3d5K2d23vmvNq42P/E1gJ97xMnalA
	rnEVlO3KxJOpko249gTb464RlniJWgfiIpHjQboc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651314178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=owSdMY7SNS++ctcpGr17yrXDHqsDnJ6on8c6jS2Cbmc=;
	b=M4rVoOTvBOqkVPocolnbwRGPjVlrMYy7B00ogquC6nNqJL956UK4oFFsTFqbCgzX
	rYdXm9mTkB5agK9MaGwOM43Mydzh8QuzWC7yG9wXLi+1EWRaIFHBgqySS8BGQhGT7ka
	OIk6E8zqw2ieCyiVDsbEAOpUYBzddk6otK5XATkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079feb8fa-2da5a145-2d01-4276-9162-424682581106-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 639c8800711f4523266963cf8e49025ac1dd80e2aeff617dd8fc5f845f1f370c
Date: Sat, 30 Apr 2022 10:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651314178
