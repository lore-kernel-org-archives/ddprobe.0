Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D767F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 11:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654599599;
	h=To:Subject:From:Message-Id:Date;
	bh=avydwQjh87sW2pc4kIJS4Ftk1GqVko8Y1ftdFjNHz3Q=;
	b=Mkf3r8994/a9UI59K2rYtTOY/fooYUV8+XPFvUO6Zvl2pb7g8j6IHLGJl+cohivu
	jqVt6Q9fHLmYHwhnhBzsyOgyvc5cXCsBpdrmL5LX4EOwXrsL4sqkvJYLTznjpE72F+H
	8qjLBNKCunTiWRLEbEFOD6UEeJ2HEKWgKRZyVaFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654599599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=avydwQjh87sW2pc4kIJS4Ftk1GqVko8Y1ftdFjNHz3Q=;
	b=WLcALtH8PISqmQAuYmK8xeybg90w66MShGVjLIvVKKEF4TD8yQybfEj2SlyyoIVw
	BCdGW3X5isg/ebqyc19xK4vRrbxWbaK/yus+l8pL7a85QLqBeRJTV4eJO08H+gFt1be
	QKBoLs0rIjWmE4cSHrKZJHt/aLRP02FVC/krAMMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813dd244c0-ccf2708e-ce62-4b81-ae93-e5b20dac1a0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eacc2e3485e0add9b817022a332ce2dd249d51da5ad64e89fd51ef59817f6e76
Date: Tue, 7 Jun 2022 10:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654599599
