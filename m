Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9CD7E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647243384;
	h=To:Subject:From:Message-Id:Date;
	bh=W0Hhin557Ew0rwK6Zw45Z7pNIXHcb5EhTO5IkDFTLr0=;
	b=l3RqRJkogL5FUIpi1cMx4JpxIUMcyAAzaJeI/cEQTmb8eXfJy7O7zs8oitBZMUbR
	pHbAKCGWGlsKXVmum2O0EzITrdOI4jE3ZNFAolt3L/0uPr7Kex6nQA9D5WNBhulxRsM
	6LpD+shi0PeVg6K6tLczCHDVeQrLZDrxFbQxJZtE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647243384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W0Hhin557Ew0rwK6Zw45Z7pNIXHcb5EhTO5IkDFTLr0=;
	b=IvIh5Xiud6sHKh5vLybt6mxwiUVoUyAfkMC6Ht/L1ZXYDOBq5qY7yDPGoiLCojmy
	yWDw9vy+8lr66NcvohSKZ5ce20y1AYDPPv1PX6lNfTmObs4poXDSgeM3NWBno6M8D2g
	mxNXkytv82F3cd48dd172RsrkfLW/H+JbPak2gh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f875b578e-01466884-37fb-4f52-a586-8ec8ceee3efe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ce539c943b2ea40b44cd46b82ed48f4d0d8b3ca929dab001a741271477b4dc7
Date: Mon, 14 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647243384
