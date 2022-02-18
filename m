Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C43F4C68
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645220485;
	h=To:Subject:From:Message-Id:Date;
	bh=6mf+922PHzIMz1q8XUgv4b9tah7cI/1QuZ27cGfTbeU=;
	b=ErDBJDr1L37upSqyCGApX91L7geUpxg2pOgjGTMFQ74DWKj6j3G5k75hz8ilK214
	07aZyGbFywuGhEonsQpdwLqZLaWi8WZDKjMDd/guZq/9+p4GASeYJuHtSlNyexbcRzS
	j/d+ncMunxgAJX/AtROqDmdrY7ZNn0bLoeRgWRLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645220485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6mf+922PHzIMz1q8XUgv4b9tah7cI/1QuZ27cGfTbeU=;
	b=A4Qx4k82t1QdABrRz/7Lky9v0NnhJ8ojN3pLivCtnGyqlLAWqGRuYzh2DNBoJYXO
	Ogz86hifK73DIbOG9tpa2CIZ7U15k7NIEtEXNuJ5Odf1SipzifB+gAW//cxGop6KU0F
	Amtm5pe3hF9eVBS/rzcmFfzEVVPaoVoKd08hDnJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ec856e4-6584176a-2531-4360-8eb1-dc529ff0c59f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77da5d4c19eea3bdd0285a22f03ae8596d6fda6ded30f67e728b6dff537aa2b2
Date: Fri, 18 Feb 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645220484
