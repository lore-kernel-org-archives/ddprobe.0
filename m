Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C89115A7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656125812;
	h=To:Subject:From:Message-Id:Date;
	bh=9CU346fBt+KugCxW2IU7yT/+iULF6RqXB+tT5eogpJA=;
	b=KZ9869eXjlosdq7Z9B9y/TM+C8QJyrR8EAmkU7iqM3wJFMNxDPtuS30iRaP0TP3a
	OJ+td3ToXa9a6YXy6AQiuC7/lP4iLXRdWFp0AdbVLVwbdgY4r5SX1+OmEZLk6ER5hqL
	U/coUV8hFezO/qq42xV770bmkI9WhnARJTBn1Zpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656125812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9CU346fBt+KugCxW2IU7yT/+iULF6RqXB+tT5eogpJA=;
	b=ZMXHoKv5mZp6VnEay021BPm+CuhNzGHw5bJy93LAsVvNLK/I7GQEnvXsRGxgxRqb
	lphMGcIERZ/FuzpUwkGlP75rNh/XH3AQqWB14myPfU+1Aq02xOxyKFOVYzA2U5ESaYg
	M4l8RZvRf8587VHMFfMQk/kt6IHaGuKwOjT4vurM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018198ca6e40-14b18ef8-d1b7-4052-a635-1d6b9e731a7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f0849eb24f8cf265dc621ef152a7ee7a276317643ba33fdec5fea9d46430615
Date: Sat, 25 Jun 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656125812
