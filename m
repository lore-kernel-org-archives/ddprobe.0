Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636477C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646217384;
	h=To:Subject:From:Message-Id:Date;
	bh=ZOG19IhToLSXXmXG1XB8kbYbF6aRSSz5NPS6vHA7W10=;
	b=IADIni5wcHR1zH8il3OgmSh+M3zET9d4bIpQpbUpORcZuX1U7wTmhNpYnEOvH/4R
	0saJcoA30xOH1s1/GYwQu3tpYshjOaneXEyQ0WQ9e4vUroP+Kc5iSoA1YX1OHex3mAg
	a7sBnUSuRUtwhQ5H3puDvAgY5hv6S//SBxjSwlhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646217384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZOG19IhToLSXXmXG1XB8kbYbF6aRSSz5NPS6vHA7W10=;
	b=Jrz+gHmEx5fQdRw2I8zu13A/QCq5VNMwOSF1hUzMT2nVV7Y52uXFSccSxQXzYmBF
	2rJnO2PTdbo4QCC0yZ6m2luzNfNlkOhp7u/3eJdt4eB7+3LnccqQazlP7VzBeQHJvF2
	6ypA8smJCGrRcDjcgSZF3fN47a8yCggDLFF+JsAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a33d318-9f7aaa27-94be-4011-8d1f-b981f472e0b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d57466a3091fda1021ccad4c5988fff86f22e58fc917a6c82c00a6055759b52
Date: Wed, 2 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646217384
