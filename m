Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831D47A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 17:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650820318;
	h=To:Subject:From:Message-Id:Date;
	bh=tu9zp5sVS29OdZ/C6KZeraYNSa+/hj1upGH8C0l5PpU=;
	b=WMqLygZPUkLlNLX12HTA7dXg0mhs4HPg/fjwPL5Y/GdqCf4dZpKUrgo1DiUaf0kc
	rxc6UtNNR8Uhf8KwcUHBG0PV1zx5AwjqKbZ+u0M9hQPatulHwIwUyc3l6SHysftZruC
	Xw/RQkde/2wChpIbMjnC9omn3Hx9boedqeJzHHLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650820318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tu9zp5sVS29OdZ/C6KZeraYNSa+/hj1upGH8C0l5PpU=;
	b=e5a3wtENRgR9OOAwAUFNMQKgys7LiNcsPDn1DKPjzoyL/Jztq3YzBj4kCYZ19rhx
	Z+sbJGW+gqssm85NRZFG9zO0hxWQDAGFLbcfgQ+T03fkKpe8r2S0g9WD46O49CZoajv
	AhpFJiYdZudtP/BOGf6McilPGhe8R/yS6fm3jd2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c8f0411-118bba98-9e1a-4ed2-a492-5f031d43e6b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f3d0f3d59a38877cd44a2a679966668f6d6b79cb6d02e97f13c8c72703defdf
Date: Sun, 24 Apr 2022 17:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650820318
