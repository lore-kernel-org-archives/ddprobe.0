Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5E13200
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661020852;
	h=To:Subject:From:Message-Id:Date;
	bh=fFbu37QzcdK9jO6ArZ4a1C+NfbIjNjfleRvu93N0AQc=;
	b=AUsBaY9PBdUEb6AjFNWE74JeDRVeJ7eadEWS5t9S8nPwyLGtCquG4cj/So5B4Sam
	lHdoVB4RMuFUMwafPIiTS8p6KkYVgAdFOICUcqTgIu6avfNnKBdkYrVjnuo7mhxZ0ae
	NlNDR82t6hCFmaW3HNuyyZf0eWxpEEz6UmLl1sfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661020852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fFbu37QzcdK9jO6ArZ4a1C+NfbIjNjfleRvu93N0AQc=;
	b=SELsqO42YM8WAONMMm10O06msJF6QV2dborWzLeScFPClm1ZB4kIYuvPQ3tnI/Hx
	GP0ZhIhnSLXHUKho8ob8XE693CxJEVJD75DrV1S7VjC1irhlsc3CFysoLH4hQ22vpow
	iCbDRQfQ0oXz2s5llglQ6txYzxQKyYjdZJG4bwz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc8ed17a-baac2011-a172-4928-91fa-44b494422891-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9011d6297ee36f721191c6011235efcb92a201a43d1962f94128503af81b9d6e
Date: Sat, 20 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661020852
