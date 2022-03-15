Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F12310F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647306385;
	h=To:Subject:From:Message-Id:Date;
	bh=A/tN+EqozhFx4TDJUq922GU5PYGZoXKcHHUMvF0nz14=;
	b=cMtAtN97FRZKWHSkgLGqsJ6pbMvtrBZwZ+w5WGWmAzdVeKqIyGBe4MV1DEaCeAxz
	bhP4mwl1LQa/ouIVwtucD5TFMA0MQgXSg/oXxq7gfKsJmuqDL7/oQI7RPTczCnirhMh
	BiMouGrKUdyUYFJANsaladWv4+S1hokWxk1NqOPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647306385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A/tN+EqozhFx4TDJUq922GU5PYGZoXKcHHUMvF0nz14=;
	b=ffUktakDUlDDaUCIJB3cocWTjrrHsv5PUhY7WWmxJRKftd6e9oq42WOJ4wLj9g0e
	uwVWLsiAfEXDmidYwxrkCLjSvqooV330041vgkQH4Sv+NDVPBvS4/h0TfsvD0CYqc5F
	8E8zRMyaaJ8x4fh4L5uzbyi/a8kP6YqDnbqY0K6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b1ca600-3b90f42d-7a41-4a1d-ab04-b0e27a03980d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b01e4b09fa8d5e49645fc3fdec355199d82ee3cf06bd1c70ec88da0652e9a44
Date: Tue, 15 Mar 2022 01:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647306384
