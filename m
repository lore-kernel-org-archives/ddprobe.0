Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68688801
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 11:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650281818;
	h=To:Subject:From:Message-Id:Date;
	bh=tISF0fGlSrSopYcNroUajiVSayyAfgAbXPyyDsCFPn4=;
	b=MejOi1y6gKZx3iz1ng4qHrBIuByEHcsUg+DjBasK2B7bDrO1uau2NQKVqDnbEObW
	E21fxQWMBIC6y45QUgN5YW5KeRd6LllhW8vbr61NMFtxjV+5uq19+nqTH5DGKlxRwCy
	vkdX4NZq086Sy8Tjif9XWcmPJljk48pgZInWg+T8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650281818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tISF0fGlSrSopYcNroUajiVSayyAfgAbXPyyDsCFPn4=;
	b=ATcv/CH069f8tdOxFk4qozb4Ok+anxtu5XVXz/x6R29DkAvsAw/9Y0moXSPs3yWb
	UmT6PQFzwcWEVaRzfdzqRfFW5H78dPNocoz3CBC4ZgMsvZf1l0B/1EMpjPgowqJv7IZ
	UwqeymvppOJ3FF3LoBpgeJInbVlIZfz0VVLTA1FQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803c7628ae-4ebb8aee-5217-4497-92ca-c4616dcae1a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beec19f58a3ca4e8ae6e7c9bafd2c747ff7e6bd09ec38eeaa6e553bae0f487a8
Date: Mon, 18 Apr 2022 11:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650281818
