Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776457B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645720285;
	h=To:Subject:From:Message-Id:Date;
	bh=XJe1btwdwa4gnS5EJzaiEGl+pTso4pcRjZqcEiwD+wg=;
	b=X40PG5tjZnA7dVhKLA1NH3YB1NFnUIeB8bmwRWk3biknBvrIpfVTbtdvB+nst5pF
	TxLYgmhQGAo8vNYouy/k6JHUvbEn3Qebr3QiEH5UW0sbUfchOM/SU/n5+M3WowQNpRN
	vQM/6ZsKKaHg2BJpMI/TPK7gR8UaLhwHVplOepKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645720285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XJe1btwdwa4gnS5EJzaiEGl+pTso4pcRjZqcEiwD+wg=;
	b=CZuogkxQlCaEM7gRwLf89+rZDBh70RR4tI2yhj7aNnT2hVR9u2X/U8DaYWpjo0N8
	qqz2GKXbYNSR4I/cic8oC2HM15VCoxfeTdlTdVoLdUUJpx9TXo6NOZ6YihUtBoqQQhU
	QSgxwQcXQQ+9FSxO/0l/Oa3dT+51Q1nH+2YrdKmI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c92ae83-41d8e9b2-c0b3-425b-8458-54cb5ac3169f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5aeeaae0135a2749330f2efe2d039f3caaba2d3c1c50098b866588b01a8b087
Date: Thu, 24 Feb 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645720284
