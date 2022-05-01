Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6722F3E
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 21:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651440958;
	h=To:Subject:From:Message-Id:Date;
	bh=iS8x/Cd3/SosgbFsF0Oo7O2EkbZGmcUKCgp2MTuTz9U=;
	b=Pohk5a3EyYsjgeYTMaS6gs+koa+RQoA8b/YN+fvG7Y+od0zcOP5Yge8hDrMUtmaj
	QgyZ+KXChcFN99N/UR08VXZpwGVbRVi7sNxFAPSDoGZrfaFC2M/zm1K9cXwgbWVRri5
	xE+4wGJkGT9eH6SIwinhjXFHXSPZoUK9MeKK+/4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651440958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iS8x/Cd3/SosgbFsF0Oo7O2EkbZGmcUKCgp2MTuTz9U=;
	b=jyBGhViM6W/w7QGzQ6ONRGCFN+g2FujaPyltyaFVs33L3bDCMbhnXVqHutGoVcPd
	21jbdusOOziVdCaqC6A/iG1STcdmmXk0Gw8Wrw8WGBfUPwMJcgvjgRPXXGCOUGthSLr
	7BNF4juhjiVPq8Kb9E6pm0F2N935O4PdwJ0fbedQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180818d3b50-fdf93d62-2859-4528-bc9d-776012ba6f7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfa544b2455ab714aee53b80bd416fd960d98f712f735a3354e009df1ba29e26
Date: Sun, 1 May 2022 21:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651440958
