Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F83D23D4
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 08:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651395478;
	h=To:Subject:From:Message-Id:Date;
	bh=BOsDy6dogaju+O/CP7Hc7aofV8zVB0VWvRmTwkP8NBA=;
	b=jXDP9OIEBpDR0PQe4WcRfAD2KlK/PEUATtuELG2Vx3V9obqHEYLNIKLdP6W289hH
	Pf47lOk8w8KprFfxIiuIELisP4ydpv/WzTvyayJaa/f6R7WoO8CvS5XjBmZ94VnONtE
	0UT6pamTXc4jN5Oufj9mtjpDoRKtDCSkSZl7+HPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651395478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BOsDy6dogaju+O/CP7Hc7aofV8zVB0VWvRmTwkP8NBA=;
	b=K9YznqIhTBaRkpktJYkMPKDwvfiFszY6MQ/+A/aEtbClX6L2UUF0pETlM2R8Cdip
	rINha+iHbjUx9kasuqyHBDLntclkKG47cyoKG6AyS5Ki/2HD0zvJqRLK/UtHfdzNz3Q
	nrDXb552GdQghetUkm+rz7RSVlsUOn89n+N35d5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807ed7430b-079a2525-a3ec-4255-962d-ab3c74fbe355-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96173a8275a03958f9d47c79ff59e22dcd455e617509842a9f5a6f4fd3ae0a60
Date: Sun, 1 May 2022 08:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651395478
