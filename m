Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281077C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 19:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654629359;
	h=To:Subject:From:Message-Id:Date;
	bh=L8K2b34KvlUFBEW1suDbDRrTnQgjY2mqcb5b4ejlpiU=;
	b=JphPbOBQ+WNpY+PYfuB08Dt0kERLIbyHSX9H40WNEcpOSDxFvd1KfnuJMATe1XJq
	oRRx5WpbI1rK9q26/slVB10Vlq+Z44IOC2NAJrRSH/QY09lvAFCBvh6rZBDEhAyPltZ
	W8oaum4TufP95/WTu7DGw3VlW1VYWQwCnGqET9l4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654629359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L8K2b34KvlUFBEW1suDbDRrTnQgjY2mqcb5b4ejlpiU=;
	b=KzMqT+2/PliOgrZ4ChZvLZWy0C2snWi961mUThprd3lXqwYkhEkf2nLoqKTc+jOJ
	MYju1fRdUGzB5FkC8Y/Dp8H/iKItM8dnDMKyu5rBarwW4Ibf4tLR5/qaW/ZBG/w8JVr
	rrJHnwOg6L2MQX5gj5ChGPTP6ns7dzgLFgsRTbd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f985f12-d0188271-8d8d-489b-b5e0-677954c85d88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a567edc568950c34e870d7e94c86c5f297d92420ccbb15e9f4c8039919325445
Date: Tue, 7 Jun 2022 19:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654629359
