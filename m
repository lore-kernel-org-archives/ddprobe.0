Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3538D620
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658816812;
	h=To:Subject:From:Message-Id:Date;
	bh=vC8NJ9Q92N924Kw+Dxpj8NrNESmZ2ZC2GWH8kUO2pP8=;
	b=BsLsPxZpagtky/1pgoRQdFUKF8fphaUtWU+THFxekryGh078GkbE2CO7VrjOibpl
	DXq833ctLZ513nDBOTHUTCOHRbZQmQOSC/usZi59c0iP26dgeJL8x3IeLevHbhzMAYD
	lebe7WJcUOhWMEcnaTFXyM4G2uYLmPhY04z7s5d4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658816812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vC8NJ9Q92N924Kw+Dxpj8NrNESmZ2ZC2GWH8kUO2pP8=;
	b=HeU6O3PNDs7GZ1fuOXTC9IP0HhAN2qX4ceXUARyTTeph0eIbKnXKeg7Dk5QUdTcs
	SwM2jhdvJEHdFKY7+IOtroqOnQIqGoao0I+nCu+rhpcK/yt4qHYNGTjMvSIC4NAQb3Z
	p/A44vkX5UJQjl4y0sHEXYGGrEUR9ZnVPxeQXPSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182392fd512-0e9c0370-bb9b-46fa-8c39-25bc1471899b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a14d771fcef36ec383fe2447bc95641e7c98b88fe25f2346b6d9f533dbd0366b
Date: Tue, 26 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658816812
