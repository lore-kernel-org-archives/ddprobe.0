Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DD57A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 19:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654974359;
	h=To:Subject:From:Message-Id:Date;
	bh=zIMbcOF5QlL5zR07awW0Tl/Jy4fGQXdRxKF5keXyU+k=;
	b=c5lrVW9UfXp5398tn2wMwtrsJwvM2OKeutzXuftMDIYyPEkhoYEa2FWAIT/jE0RD
	9Yw0KADjTktaJPcbmj/ZmnD3ueNCTis9RanghLrYh3C0MMiRE+l3/jGIv9v6GfSf3BI
	arRTIEJCKs83TwDS4vupns4Pv1xs6tFzxaWDdVP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654974359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zIMbcOF5QlL5zR07awW0Tl/Jy4fGQXdRxKF5keXyU+k=;
	b=BbmgdQ1KXGX9zzzBTdXobCpZfzFOMiy2BOODBJIjhKMacUqzf71RUkPKIJ/JNS/R
	HjcGpl2kTSS+pnjSqOfXXwwIu9RyTq5Hmr/0+oJ5DrSQlXUQIS8n2CStGL5l/Kynxk5
	hfTC2wi2AMFG1fk1NfRLZjXay0lTIa6bI5b6+TVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815428a6ee-492b7e7d-7ebe-44eb-99a9-6e2b3a56132e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9da59b874d46bd028c012466755eb7e57154e5b4f6a350ed5bdc378c2a041ef4
Date: Sat, 11 Jun 2022 19:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654974359
