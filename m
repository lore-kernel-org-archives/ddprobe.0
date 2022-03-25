Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3B84693
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 02:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648174978;
	h=To:Subject:From:Message-Id:Date;
	bh=q1NI2LdDkASYzLlmdqWclGeSoAd8gz3+SCcjd2i3mSc=;
	b=gQtWuFF+/I0CQrISHTOHzg1FAXyZi9OZDHEql3NNxryicK/9SVDJbVVAe37CW6v/
	BSSYUUe+ZB5K3YCvMWP6NpTxw2vC5Bv/MtJnf40r+4OU4A9jms4GQVb6PmbT7ESVHKs
	BtTxZl8/a+izte29Ty1uWAbuszfhRjJOhwyy3na8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648174978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q1NI2LdDkASYzLlmdqWclGeSoAd8gz3+SCcjd2i3mSc=;
	b=dtQ9jue+jN3GpMI+moDKos/9AjpTRuuuYD6LzRxu4t+vs5o5QUZ6Tw8X2CQEQDL8
	Q0TAginrAEpbfUPXa6mcEu5aHD8j2/BV9iUyJ0dRa5ZLn+Zr8OzRJIywWsce+U/xs5k
	7ZXfnBYPsmbRKOw3RSimOwYQQLb+rkD6r0ZgNt4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbee254c6-4128bd10-b9e9-4af7-b6c9-918fb322d803-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f14593ce1366300916212dc2aa76ea9e32f1643a4a7069f75bbdd4282967b95
Date: Fri, 25 Mar 2022 02:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648174978
