Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A4A63D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659524452;
	h=To:Subject:From:Message-Id:Date;
	bh=kE2HmLyisd+XU2En/9TWIcMbbvzj/Kv6CEPr4V6LQYI=;
	b=RTvZVrIITzNHUH+rhbZVBtzimYumvSR9sTfiwXAjomXty83Pn41jk39WdrzCPnOX
	8sD6/Um14yj8USfp+MATCiA8704dI/KjJ71lRZvnPHbJpeFVSSB1EBieIYdq6ISuuCw
	T1U3s8QkkQQ44HoU8FP3uhOYy6rzITMOjOnH+wiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659524452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kE2HmLyisd+XU2En/9TWIcMbbvzj/Kv6CEPr4V6LQYI=;
	b=WvARtStju6d2aoe6lCkZ+CpzzMh8ESiWUlf3e2gmPf4MFicVwbX3GimQmQqXvtlL
	mlwsX/wIz3Dzio5+gmmGSgsrSX5TOn9b2YrDjtab69t7nNuZOKL7aJ5fd0Ask6hN6Oz
	Ft8RfOqFFzmOonhhnjHBi24Q8lL5SLXi9Fp3x5tU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182635d90f0-62b9651e-fc91-4545-9b55-15e8bbf9c88b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cdde7c8b56e206498d1757716205e3f3a24faae5050b8e7c7d85ebfdf059278
Date: Wed, 3 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659524452
