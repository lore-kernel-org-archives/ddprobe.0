Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87595369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645855884;
	h=To:Subject:From:Message-Id:Date;
	bh=0eHa4hzrnIj8JdppyNWGHhTICjeAqLPds7UPkLuUzoA=;
	b=HPdiEaa0cN5CqkggxEMIJi2+EX1SVIBoAgsyEvQHeLI4r6vpX2S34yxeeHRYHn8I
	VPtAnk5TVlnh7KZlv4lR65EYMBM9GWPEQw8q6eB8m5GDqp3vRZDpknS5pTsvpsyDZfg
	QFnXZPw+ToeJnJmuwYqpWJJFZhcMHKA6YSLqoRYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645855884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0eHa4hzrnIj8JdppyNWGHhTICjeAqLPds7UPkLuUzoA=;
	b=cxM+GiHOt3xJAO4/xI4M3jjylCOTbGWHI6mcg3D6HDqQJS9CVz7LPHyxQqOFui9v
	eTCT/JFn6AlDTGTsrAIjgJdeZ1kyt6w1iIPyFO72ji1Sn01YGIFs7q055CQ5dH8p0Jk
	q4OyNnqnrIBS/d7LenDIlUpc7VS3CIn3nd0R7/14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34a7c5c0-d3dca1fb-573c-45fc-968c-166ca8898230-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 874137eb0d6c88a6b37bdfdaf1adfb81f015ad1c8479135591ac468dbc53d381
Date: Sat, 26 Feb 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645855884
