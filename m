Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0DA7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659505852;
	h=To:Subject:From:Message-Id:Date;
	bh=UJBAXLr/encUZqwluN70odMxDjqlJ1IJ0a0smE0rxTU=;
	b=Q303YW86BLNGgZdEN0xEfedmayDg/PNcRjUg+3xUnr9mCCpcfL7YV/2Gx1XEEBiR
	x4dP0xU6JBWH2E9VY2NRqowXCWXrdYfMZNkhUGosxSPZm4YDBe8eIG12lPUxkiRXbzN
	F5ENMSB6HAAZua9kxKouuvgqtr89WFdDgkXrScaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659505852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UJBAXLr/encUZqwluN70odMxDjqlJ1IJ0a0smE0rxTU=;
	b=QrmCtO06kpMI7TGhQm8kr2PnQM+AyaR343lOvVxQkRlL/kNeUf0i/A7pDZTqENwQ
	IHBaOsA7qs7Cxt0goPHSHfyQ2Hh4uKom71r7P/Ur9CQHy90ROaiU8Wl3yY/3J3vZa8s
	ZwnE7SiXn9Be4lsOO1eH5xVHEAbFyczLsXYqfeM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826241c097-abee9026-ae98-4c65-bded-436ab384f662-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdf45429c110453dcb6f4a653fa53b9f8b65f37b2cca8eb57e26fbcd48e205df
Date: Wed, 3 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659505852
