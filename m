Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DE27A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 12:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654951440;
	h=To:Subject:From:Message-Id:Date;
	bh=jmhkteBgbYxl9Aozq7HoBafAlybB/hu6ybz6fW59yiI=;
	b=ilxky+utrExLCSCI41+aHus40aLY41eYvzckTTrgewLAD3A4MJqg6aqkOIznhf7g
	XtHsgvpPCDHM2mKQG4HQASgAy3kqaMLkMPcO8lqJhKdacMqY8kUpY0KPoOhtSnUBuk7
	OAb+WmbxaHypPZ//UsOHoj2Dkd5ib2g3BXWQcbOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654951440;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jmhkteBgbYxl9Aozq7HoBafAlybB/hu6ybz6fW59yiI=;
	b=gCMtgKS3ak4j1HQkqyy5Qle6ux2zv/jJmHHrNhdP5EIwvsodlBFFNozx27mPtOi/
	HhttyrC3UDa1JpaMPx5JihparM2Z4f9j0lBIUjtF+FTCucTXzfXaoxuKiAfRMubIjiF
	uW99HD3rekR6AoHmLFYNQXRDcUSshBZeloQqGE8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152caeb81-6dc48f64-4d39-4b3a-be57-e8014d862a02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db7696248f31778250af1f55c1bad553e7e409c749968b18a2034523cc69cc23
Date: Sat, 11 Jun 2022 12:44:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654951439
