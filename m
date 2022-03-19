Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BE8180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647687384;
	h=To:Subject:From:Message-Id:Date;
	bh=sXVM2cAPNJwodER0W9w9AkGDLsz7P8jSyOmwqOQeAUY=;
	b=laOWwyppq0v2RP1DUDxkjJioiSDcKbK7EwE3UDWqZ802JF5ddpr0YbeqXfQyz0Sq
	fy739CDPVteLZf1JBl4OhjlfZp8207YG5ixVYyH3pl/D9gCdmn2FLgsRO3tx6xju3SA
	km+B20HsQYulHDDwakOAhMRB0aGPSShquPtdHTjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647687384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sXVM2cAPNJwodER0W9w9AkGDLsz7P8jSyOmwqOQeAUY=;
	b=AyPn08qxdcnB2LY4CSdEgQg/RWldbLNzu3jm6yrR40Oks/bHaQNnn4HEQh4CRD+B
	llAi/L7MChhlsDUZUMZ4IHbrIAVrS8z5EVAuf7NGbZ6BNak32W7983nF5XtorXHmg7g
	fXnTH96o2E7C8vmKuDP+py2DLg0YpQnoJpS4CUWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1d23ed1-cd1187d2-06db-4c18-a881-0e7680932f22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ccd7830c6719022cedfa6551d5a46c2a9f653b1fffb16397b51f39bd76f8a0b
Date: Sat, 19 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647687384
