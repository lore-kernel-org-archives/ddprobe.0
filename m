Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39F946BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 11:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654430279;
	h=To:Subject:From:Message-Id:Date;
	bh=W2h69prpNY3N82UFnlUr24yO/7OJUZ58hcBEeg0sMzQ=;
	b=VMXvKwltKvkvCKlr7TkZJMxjUm9z7VssUvaBs0TXgMV2CZEarIGrbLGD/Te8EFcA
	3vfAyKf9gxT7K+a0Oe6tFgnuZWrhi89vgDOcGX6gby3oSB0ipjNw/VpukBo+sH1UD3J
	3jgLW2D7ZOfrasK7fnnxHDkL+4uWKHTyXj0ID6UY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654430279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W2h69prpNY3N82UFnlUr24yO/7OJUZ58hcBEeg0sMzQ=;
	b=H/fW12UATem5tGmSpWr47P5G8nWpFQTJhh0ZUlKjOaKtOsqCenqi3LeWJDordH1X
	HdMGBcwz6CSYzy9su9ae3T0+Mt3uwgvQ/0FeG8skahTEet0Mfr5nRI86u56vav3ZsAX
	AvUlawenYSrH9APsBUsvbW+v7549YeF4kg5//ytI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133baa67d-32f71470-f52b-4956-852f-c6e0f1459749-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8eed5e04d873218b49d9fc089a363436e5e0652b321064fea3c919e3bc5c6bb
Date: Sun, 5 Jun 2022 11:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654430279
