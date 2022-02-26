Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9EC23B4
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645894585;
	h=To:Subject:From:Message-Id:Date;
	bh=oaxGBzVz9a4x1T1WEUqMWe0Hnx3Ub3VpIsOoGyyQaXc=;
	b=g1cvQaE0rp2YoToW2zwGsavbWRq0RSTARO8BcmYeL16PsN2UBcmfll5BKjyIU99S
	UiHx+fzgBDBqMZ6OfAKt9Z1J7ERivDHSoThqviHrtmPtRNR5wTGiisocstAm3GldNtn
	u7Ho+JVLmyRvsZNF+w+N4/9aQTq0KYRzpVXim3tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645894585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oaxGBzVz9a4x1T1WEUqMWe0Hnx3Ub3VpIsOoGyyQaXc=;
	b=mGis05li4hEAy08OnTrUeWWMx9fWRlsBQvGxVjACHz2rL/SA+E/1suIhm+98ioXn
	pxH+VmV2fbQ98ow3owTwKNrAsgocuhGaL8t5+ke8+8knovc7GpHbSmNiZueEQ4tHi9D
	D6Usatu6rIS8fWbQ7StuLroyQAyyv5nPTDGKkhLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36f64a67-0facdb28-1fd8-4ba8-97e2-05dea646cf41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26bc383c0c6842386909132c13ee9234bf1e71b0a4ff4cfbea08de24e2b64d3d
Date: Sat, 26 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645894584
