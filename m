Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D33453A7
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658267213;
	h=To:Subject:From:Message-Id:Date;
	bh=1mjS5Q7O9zHT7jTdNMEYorlf07zTIg8WD/zxb5oG+rs=;
	b=TrRCyOmN89FlGi9pJKyejfRxGIkAUMpkthxEkKohyAKjVD2hBwrecoJXMaP9ydq0
	EHG+azrKmhCJoPi3VHfXbcQf/VitsqBTCA7r8SjyVHWaSW5s5Ctzjd4wx04wGetvBUJ
	HCe18D4ARmRzZO1NmGtFlu5K2OWJfO0JsIiyHN5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658267213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1mjS5Q7O9zHT7jTdNMEYorlf07zTIg8WD/zxb5oG+rs=;
	b=iQcTCBcLOBuz+6iftExK28IlHbOQP9EauUyPkMEQm4hhFo0JM/pB1p3A0YAQkGZu
	hlsF9c2D2brKgtJLSGIWfndFSXdx8ZINN7aeApJAVaXuCuE2EgQGQJsvUaOzDU8nt9n
	Rchs7drnsn22oFdjYIpGrvLUm3aM2chzzW1gJbfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182186d9a15-f9179312-f8ad-456e-ba00-7dcb19869717-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24d7736e46039147d70a895005d57b340f827ff28ed1c16ef11bac7c8c0599c3
Date: Tue, 19 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658267212
