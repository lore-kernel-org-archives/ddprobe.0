Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C13A23CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 13:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648215418;
	h=To:Subject:From:Message-Id:Date;
	bh=I7BbjWByg/M1d0uVdn8QyEXEEs6L7fhSgdMm+MDvOT4=;
	b=HcbREYzfdaOWg9M4HNZTCZ5FLFBRk4blmOIjlPpD1JMrV8Ln+K31mRPuVl6QqTUS
	AbGFi63lUCiELNlpLWPiz5bEkZLgn61+70V3yUznMv6LYLvTNw1U/GTLolrWx+hj0Mb
	kyL2D7QJ9USqARGP8gap7pRDYurVLXOvRN7QL6NU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648215418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I7BbjWByg/M1d0uVdn8QyEXEEs6L7fhSgdMm+MDvOT4=;
	b=g6JuSsFfniDPldrpCX7+dR6GxR+wbu9GBhXsdSy9SM/nTWQy5+ZQDj5LTV5cH69E
	M4D1y+cK/roM58LX4sAZ4PVNlBKAwpq1PYeOiAoULEALO1xlAoU0RDTMck5q9wBuvNb
	irzXHgMbQhBCyeAeFRo1xd7Pur/dZJMO1kUHY9b8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc14b658d-7acc4908-6c40-40f1-a22d-ecf02cc399d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b968ba7f44fe335860ba8b67b88d1d477905dd478fd3fe89ac32a3f8e4df7bd7
Date: Fri, 25 Mar 2022 13:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648215418
