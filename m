Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB5F7B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 23:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648684678;
	h=To:Subject:From:Message-Id:Date;
	bh=HH77nmmlaCeTwYBBk3UY8Zua1F8IxfsViMPVBXVgEXA=;
	b=bdwqZ4wLh8rH0hYLjGO/oyo8kR8zXLaKNFO9VVylk4g2/e0A0MbCxBTU5LauEomX
	83fV6j40y6LlOCRcGh2wAZoXAk/loC9NFqaVirUX8WXp755ddz7dimtZk70fb1PIEzo
	SpEmsaAhbG//jdu0pcT43TFSZy/IytW3regDdbzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648684678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HH77nmmlaCeTwYBBk3UY8Zua1F8IxfsViMPVBXVgEXA=;
	b=fUzJGePXEjPH4Fi/2TXsJB+myQ4co90nRHw4l1F/xp2/rQhmZACwkZ3GJyLDaWDO
	bF6tSkB903VKHxduwKPjU7J+TWvVqKtNjLs5AGv9uchUTyuIFy24/omu/0LPWOLZq4G
	vUXK3juilwP8LT/UihuScZLqMnuN/tcfDVwEgzYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdd43bc65-d1b8d7f9-3e43-44b6-9e42-90fcdde00db5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8285703a09361be0748c3f96ee7e2c94f0212104fc0e1aec781a3d4a81f2294
Date: Wed, 30 Mar 2022 23:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648684678
