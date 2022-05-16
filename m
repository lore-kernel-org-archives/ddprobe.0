Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4762B7FE
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 10:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652697599;
	h=To:Subject:From:Message-Id:Date;
	bh=/garI/9+/UB6HlRIzjcjeSxrOv0ketkhXeoDq3fDbSs=;
	b=Egw1p0EgY7uGTcfpJO3Z4IiUiIU+TE5Hbhc8iHfdnb96rPm0XLPSCXf3HF9DnlxE
	k1jAQXubFka/+eBHnX8Q2LDqd94AHF2+TE2GjTsUrv8G/jhu5NaYI6gTm3cUx5+1h1f
	nu/rL24C2drF/OntmPHC1Zh5nV2Ja1NU/I2Fr39Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652697599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/garI/9+/UB6HlRIzjcjeSxrOv0ketkhXeoDq3fDbSs=;
	b=kk0chXyYGA9qz/wIg1ChIXmH6oxrJtO3xElSGYhajd8V/8Et6gSlROpgVvPJ2S7U
	vVrdJbsNu6Xqbfph94CiHo8k/dG8Ve38yi/4EgO6nWch7ga9DMAY/RFr1Lr78sVw+15
	NSllaQ/dnYrJhlhwS3OrxcfCDdwQfR55EghBUK2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cc740d44-7121b809-1350-4c72-9a82-40d3c0b9feb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b887da0328ec2277d459ba2527a3184098e53f9a09670de113f02bfb9dd8220
Date: Mon, 16 May 2022 10:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652697599
