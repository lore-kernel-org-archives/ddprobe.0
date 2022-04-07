Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998FE20E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 04:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649306459;
	h=To:Subject:From:Message-Id:Date;
	bh=jwBOufjqpecTPBM+vjaAVksz8zdS9VIwg4McRLsIEwE=;
	b=EWwPLit44ENRveorSnTKNkuYnO3yN0oel8bkoVeYPYQyHQt4IZlgJjroZ9LJv9qf
	aO9ZJl+OrDmosysnv4B5ApyUOlSh1V/1dQWlitCK5b3dbZ7D1P8KM0KCXjABD04yfk3
	KHXPIAJ00/gQHZybihB69MEMmUt+C1qX/2nJ/SAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649306459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jwBOufjqpecTPBM+vjaAVksz8zdS9VIwg4McRLsIEwE=;
	b=hXj2aeDtCSC46JDQxHGqwatikN1EN/GjQmv6sa2vUq3PlFwx1ABTBfqKi1k4/N9c
	bEXvJvlcR8AI4fHI/VS47dd1TP1gGK9BGlcXKJLDRw9iH+FDcA5UiW2uhgshXp4vEjZ
	yFaVHY6byGKC8okO9vhZa8TkChNgHb0jtqAiRvxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018002535896-c8bc1fad-6f95-4ba7-a0df-64973645a408-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c220c3bc6db852d47fabfbd901f68dbf0152a2ae9cabd64235122e988a82f6e
Date: Thu, 7 Apr 2022 04:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649306458
