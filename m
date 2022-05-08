Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C1F7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 01:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651973218;
	h=To:Subject:From:Message-Id:Date;
	bh=OfXO6IcvRTl0rzFVnTP1Bno+rFt1LUsehNv4nv1WvqY=;
	b=bBBcIm8lcG796ozy36NR89TaQkn8zdmuLEihITmBLYUMU0vetMWHIFuc9+2772qI
	cZBrQIVOkl7WcmX+uf5P/wyNsyU/03RfpdvAVycNJpQdJ6k3jWdFHeyk4BoAEHWboam
	8kJzi8ey5p/FxHctJP3MAuj48n/V0PXdFEOdi55w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651973218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OfXO6IcvRTl0rzFVnTP1Bno+rFt1LUsehNv4nv1WvqY=;
	b=Iypk0e6h0RExdesmCoy/aTKm4QFgq6vKn5iS1da5uUy0Qz4WRuz+ZmcVAwJL1JNr
	2wo09vQAC7T/cqeYyj+Ah2KOMkdTlMNuxNLGzCKCfDichxPxU27aVjatwDd6Ez61j7e
	5+Bonc/d2eLAEOmO/6VqQRRuJpg/HqxOjn9KqWqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a146dff4-5a9b5eb9-544d-40fd-a1a9-df11ca3d0185-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74f3e34c2e9a3280c2396d0c3665f42e1ff2c66b043e86a50222e2087f0e9920
Date: Sun, 8 May 2022 01:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651973218
