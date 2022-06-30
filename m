Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA95813
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656565612;
	h=To:Subject:From:Message-Id:Date;
	bh=dISV7y8WpV6UZt3oqjlGpWXyV9I5Dy15Ksqm2hxMD/4=;
	b=Tw45j1JcIQeRSVgNwCvJLlhE2FoK5V0Wuto2aSnB9PTeJ9hhx3LWuC1nV8cFNG7s
	j9bchjEjQu1zHDHtcpwt8H6Vubbq97sSykdQVIIZEJ3fwkLH4GMRMx0nwmAe9qjzb5B
	Qd2N+QV4vtzCE6yVpv25jk7RLjZZU7C+8J1xUWMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656565612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dISV7y8WpV6UZt3oqjlGpWXyV9I5Dy15Ksqm2hxMD/4=;
	b=jtr7W+LtDGJB3NqNP993MVq32scKwVPYSIR+V/7f8ndpruSEJOT5eK5ujnyRes9w
	xc13D0bUXaRihxWw/zv2TsPww2jq8XRjRzQI8WFlTQ6gO7Zmbd1GG3sCVBQ8LHT1xyc
	i2QbwikavIES3LS+Kq+XR3aNcBzWV+PQywTwKoSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3013eff-8221f828-ce91-4be0-9d0f-64337e011046-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bddebc102939538d468a24c5635e4dfde5d1a960338125b9af44f0819618e6a6
Date: Thu, 30 Jun 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656565612
