Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE4E7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657469212;
	h=To:Subject:From:Message-Id:Date;
	bh=NpVo27He+KYNx0ziaOyNZhLsm5ag/EtuHQqcN9VmYew=;
	b=Im47zWCdsGxwaDGTC/8ANdf/fGY5gbzrX+OOKG4XrH52zXfuijSagPcfLCO9RdqC
	rLDHSgSSNl8yPm9voz6h40HEeyCMeRj5B1Jqxp7QSxshyK4X+TGw60ccSklLKM4bsNE
	IlUPwcOkMvdcFBwnczaKEDFZuwLQPp6DUUQNHdQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657469212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NpVo27He+KYNx0ziaOyNZhLsm5ag/EtuHQqcN9VmYew=;
	b=ZBVwDaD8YYP1Bfk8hbGLrKP8Y1BmiKeMWG2nX0Co5iHT9oXKV9CqfZ9VZSjNzIz2
	CmuDHP+GBzEKdwO2pF1u4odqXRMuqA7FeeGv1p3Xv64VapL8M3gpSB2LvSEyuREHus6
	SECxzZl9XDXTW9HZV/BQOulv1TUQ3nvr/B/mO7Fw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8dd1669-1eaaee4e-291b-42a9-9864-000c8e42518c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f3c6aa1694af5a4fb080961b1682dde6eb49995085d4b800cdea569ed240c38
Date: Sun, 10 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657469212
