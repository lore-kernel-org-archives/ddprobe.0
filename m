Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284FC1851
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 17:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651251718;
	h=To:Subject:From:Message-Id:Date;
	bh=4xdJ3Kin85lc8Tsz25Kp3/3plQfEmdx+6IGeapiVIe8=;
	b=NR24KPlvoRnitxRls2utAQmOYvGElI/fpynIODeZoOIyzasX3QzRTtLAbY1DtXP/
	FiGq3AetrRi4sqIwgDjMwCS1qVwKsgDB4Nd/sxOMOpxXKQ2kO0pS0dtWuKacqcM8sKK
	M0wUPGSTuqqzWFxG98JXqayjZFuXP/71t2TkfyOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651251718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4xdJ3Kin85lc8Tsz25Kp3/3plQfEmdx+6IGeapiVIe8=;
	b=jsVriTZhp03pPRfpd80UXeL8cE82njZHpPdGRNR/gmqpidNEFOPz2tSR7SIdp9lu
	F6JfuAgfp7EOsge1oQIrKLr599TWrOrt9m638TpjU4G9YRRh8syPu3Dtm1HWBYUKHt5
	2xCoiw7fx7LJaRV/DNG4nfw0LWkpD1GylxdIomOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807645a8ac-cfaf39db-197d-4bd0-8b42-6665842064a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9457334e243e2926627c8332a243461797352181692284687315171d00324428
Date: Fri, 29 Apr 2022 17:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651251718
