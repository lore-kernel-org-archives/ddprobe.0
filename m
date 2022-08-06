Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C242F33
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659823852;
	h=To:Subject:From:Message-Id:Date;
	bh=AK3Gkk7nqApRmzw8dQB3cmZ7gPl52Me5ornBXKcfafc=;
	b=Vnjrv/ICRSR6dfA23jXMOcrRvw6yzQw/1ei/CxKAKDf5QFRvgnHHeF3mys7Ivcne
	bYqp9Tuqdvhlmcc95UdVrh5un7+u6ucYXpnjiCcvKD4qFnuGwYHv+MHehtN+ib93gna
	LWAWmSV3C+qQAaluqiMBNu+SlydzpPXVceFrqMDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659823852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AK3Gkk7nqApRmzw8dQB3cmZ7gPl52Me5ornBXKcfafc=;
	b=XQ9kvYij56loMj9C+qVWgdfDjh9C98WAbLqihosl1vwlbNn1n32KbOjJuivbWrxA
	ZoAAh5hH7jlt5g64jaQk2gB9XQtYhZd475GyDBK6VHz0C5Gj+DQTHCqiUmi4L3sBg2p
	itSWOg3TjlLSZgqG/U2J1utKwo/298zqRi3PGBXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275360c11-7e93cf77-f1b9-4310-b63c-17f9a5912c0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1004bea22f442b79fd83d37893756f7a3365357b2d732d2a0f520d912741a237
Date: Sat, 6 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659823852
