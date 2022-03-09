Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986915107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646850985;
	h=To:Subject:From:Message-Id:Date;
	bh=Kdzedooma6HYLXZgzByblp39zVdY71WaSRtEVZoK3a0=;
	b=BvZRoAyrMjP0TfA2t3Rke4h+mDthA8KQo8ImKh3oiMn75RtBc3RTD0Tt4pXJ+/3I
	/RY2bRn7XP515eEJopp+bAt+3XUX2AfNdVD2XeiUXBwnhR6gMlokyfjmxppqPwkT9q2
	AYJQ/Y8RBq3ezFwUdTP+g5+5U4R1ipSOoOgbQlWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646850985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kdzedooma6HYLXZgzByblp39zVdY71WaSRtEVZoK3a0=;
	b=gw5Qb9cmPilbmJcvUOIn0JWQEgselzAuTpNRabo8SZMzjFT7ami2HqZW93DZ/BrX
	XQ6OiZk6CDGI7D4VefNYlowjcQTsl3wNP+U8kOmg8ogRCiLgN6pxbX6y2vh6HKTpdYt
	L6IieYUHFQFo6nuC/XTANip6f+wcTX6A2kOTmv6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ff7cba0-5ca67ba7-d574-4e91-b1d4-ad8591a0cf7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b75f0eaf902c05c30f0e8dd874e579bb3c7804a5f175e276c678eeeab39277d
Date: Wed, 9 Mar 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646850984
