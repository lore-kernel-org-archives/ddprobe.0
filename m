Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F0F363
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 12:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648645138;
	h=To:Subject:From:Message-Id:Date;
	bh=3roE4xvgo3JrBzXdj34GieVVNW9GMv1Za/KpjHtTyI4=;
	b=BrPWM9WUMT21S3P7EFRDHsx1030v4mJ/VbrEppwV+9rqx7U5ZTVj7iOI4QNqSciz
	U9QMj6Q7gURkhCyqI0ytQi8PdglTB0+LCzG0wKEVatJd/vFEWcba8xtONu6uYH50lhm
	RCvRBftkYkOLoCAas29HT/WSIe6qqreWFI2PN8ao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648645138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3roE4xvgo3JrBzXdj34GieVVNW9GMv1Za/KpjHtTyI4=;
	b=gx4tn3nBFEllN0YjEIfN0CdY19NpezUMksf9viMh9KZtWmnZhGfT6jeQZ2uo0XuR
	ahy5Yfwn2J9AEQ3KkZqeML/ciZjrMv+/tmLefJDm+xCBnHAdtrHTOtU37KuSYgYvkcm
	vS/ti1yXZb0CjJT5xzdMkTYo9VIcy4+wJArCxuKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdae867a3-6e5258e3-ca24-4a52-a04a-427b759f957d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 281b3930ca5ec584bbd8282258ba7206b85104d20d7f3bbc3e9dbc1f38c4b688
Date: Wed, 30 Mar 2022 12:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648645138
