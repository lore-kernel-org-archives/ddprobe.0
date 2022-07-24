Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08074681
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658692612;
	h=To:Subject:From:Message-Id:Date;
	bh=aY5n6F6x4B8ViDsRk9bDCdLyH+bQka48v+cNKuQBRPU=;
	b=OXmEHPQ7Pbpv2xZi/b83tT/+7ttl735HrkQ5dOHfJ9dJ+GWjpuJg+jnGNBqVBRlB
	yNrb/3pKgckyuCLfHq3IPrTaF2Wx/aw9tBhp2+Rh0SCGgHWd3JSCSLNdAsTVIFwFnFR
	D2VjAr+HX6lecKFrjGCljU0X5WxRA4mjkU33Gun0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658692612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aY5n6F6x4B8ViDsRk9bDCdLyH+bQka48v+cNKuQBRPU=;
	b=GPSKnhAaorw/vBl00uY6IrxQL5XkqpUi261V84JYJlaTzNFjeBs1yPWtn1q35IMn
	YPSg6Y3N/OVvAWdAvLgHO7XtJbtTg5uZixPJ0yMfjny6I3qTxn94LrND00NNQi3HIEm
	ARqGu8V5RYDiRzxhJ6LR5RVNBf4CB/z1n230Fj88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231c8b0c9-74066629-daac-4295-80f2-598e0ad041b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0428a9b77d1d37fd3f4a9189e7dd85d39abccf6dd1ed6e9e54b61f8ff6f2f8c3
Date: Sun, 24 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658692612
