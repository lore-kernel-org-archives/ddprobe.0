Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AFE7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 16:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654878180;
	h=To:Subject:From:Message-Id:Date;
	bh=+fANXr3BDwyJpeXLEr6vibD4fdvTXMNMyMWT+qAM2dQ=;
	b=QVKlGmwdAA74cpD1m1XQnZ2aqIsyXUd5SDlcY6SmKU3osd9oTSePOxx1SaytHMkS
	KagTRnvQUD2pbCMIxwzWZWaTdRZnrQ7AzOgR0/hpAtH37nK1kCyMfIbfnMb/jUTMW+1
	i/slFdzyrfKyzET0JMsrfqIYUStuUbgvvBTkTNQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654878180;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+fANXr3BDwyJpeXLEr6vibD4fdvTXMNMyMWT+qAM2dQ=;
	b=daS/4sk3ao5gauvNGcr5EjEYkIngSJiQXx/mXv/w9Ix6Wvgo8m1OMif2phj/7T6z
	G4rM3J8cJz5pPCrUa0doAwgdP4H76492K2ZFZphTrLOGakU5KLhhpCRWM+2QVOh7YgI
	AhuST1xjrguxedH3xGAs504tMfO9B3QesZ0O1pec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e6d0fa8-be882dca-5d5e-4b6f-b913-ac2ed9b78112-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef4d2c037e6aeaeb1a02e0edacf18e3ece4c0fdb74666ac3418b3149765d6e0d
Date: Fri, 10 Jun 2022 16:23:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654878179
