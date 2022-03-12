Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6126F620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647061284;
	h=To:Subject:From:Message-Id:Date;
	bh=euLacpAq2riY9zXXAW3ZaU/dDhuoLvULsVJpeghed2U=;
	b=Qc8TI5l4kvBHXjuwkFZAIfijyO+HIxVDiQngMe4M8yMve9PHgdrjKeBKsAfyoZA4
	unDZWoBEfgNTEe5Ih6qr2djXJKBo5thJjxv//koC3of38P894chj0TCDQn814fR5rg2
	obZJkE/NXWaNe1s5X/4NdvMWr6BJijto7QhvlHgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647061284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=euLacpAq2riY9zXXAW3ZaU/dDhuoLvULsVJpeghed2U=;
	b=UV4O3wp5MirD2+KSbEbLeT8bPOf8hyvq9OeCKWnhHMgZvGYyMq/ovWZcgoIyQ9RD
	2g14Mn751aSUHFoZz25RJnF6Z9jOtpCmEbMv0sG7es9gYPIkQ/vRZttxH3pQ+ojRRvN
	lr7TYqk42iD59jpK4AFI+FteSvY2NubPphn540GM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c80b7e9-f9b96f0b-da96-4477-827d-9e1d8f388d15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6de19a5d7b03ee57e0e3456cbb0ada33f94e79340b510a35f5acb4903f605b6c
Date: Sat, 12 Mar 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647061284
