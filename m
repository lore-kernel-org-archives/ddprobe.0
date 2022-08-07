Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B25E33F7
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659902452;
	h=To:Subject:From:Message-Id:Date;
	bh=95q9f8Z1CpFC0PclKmcIXHhgwXxgcLH4X2amt0ScaLQ=;
	b=gbIcRBFEfXYvBUWMc7y1Ojws591eatpKzFItujZVznKmXg/EalBqp7ElxJ4XjdOX
	UVrxvgXUyniG2Qwhj6hF93IHsDtTQy7Mtms7vBDiOgrwX8uFDMvDkgS9OLLgyomSlGB
	ZtKqH7LHwzVJ2CktyfpQx9krDbTbw2NkyVeWKGw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659902452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=95q9f8Z1CpFC0PclKmcIXHhgwXxgcLH4X2amt0ScaLQ=;
	b=ez9tXH5AXB/ZyRwwv6TnA6dJC9qp+ahLsqJheAXyjz32TgBj8FpOm1HE9bGpgziS
	pgk3njXd6MNLfezurQTaUp6+NM/1SOP2bQpOPT2mEPwpqiz+fxbqEpJSMStts364iBH
	+vb7aRBsqqm0j7UMQ0FxcmezzHID1/W9WKF0fb+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279e56320-2ca8c4ec-1abf-461f-a668-0098663f5dd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce4428646d21bf8acc214ac87f9b17496b9aa06080d32bfa098622a8c87aea16
Date: Sun, 7 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659902452
