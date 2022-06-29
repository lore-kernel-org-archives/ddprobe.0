Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E4D7EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656487612;
	h=To:Subject:From:Message-Id:Date;
	bh=iRmZpc0Ra2jDF1iGncghGvM0UMUyQatxrsVQEVHciIU=;
	b=Q6/FxLky5UxtzdbBECkW8ObUwhvM0UyqLAULTz/FEurVZgRWTHlfKYamRfI46+i8
	E6GPonZXEmkvVjbCtKcSopaIInNYM3g7iYtfGfNEVKZxZn224EwzwJgZ19fZqeA7Gl/
	Pc3K+E1lPSkWSLEHJikYzedue28KY3BLjpcqKlQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656487612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iRmZpc0Ra2jDF1iGncghGvM0UMUyQatxrsVQEVHciIU=;
	b=Z+rkDvxQr9VwRn/vmKbUqHvNUsgBLPxw9KIrMxa1SQzCSUBsKvoXhqAzbM//ARwW
	EbvcD3xqVLvJthvOz4RDJDoV4o+3AKGs3afTweMP0CZvsOsAoKUKVRoonE4FBKBYK5G
	aDKhr7lfJu13OecngCWwLWgE/Ip6Sa6d9bntFjnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae5b0fb7-32bc57c3-ab2b-427b-ace8-8c5e4438ed70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61554e77475b274a377cb31aca925f61a812b88c96f99e9ae0e1c1d905b71f71
Date: Wed, 29 Jun 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656487612
