Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C5FED5
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 09:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648806778;
	h=To:Subject:From:Message-Id:Date;
	bh=N7s+/nYV/vI7Uasu1SVkSzzITiQnafCGpN4AT3n0psk=;
	b=Z7CR25USFcAF2nhIDTCbJQScQYK01AimoKa59I9HCZy8q3pKYZSaVwLp1FxRM/nG
	xy3qtSvXq1XCW67zXyCrbyVceefJ+lbikfrTCB6IjuF9LZjvClqfXPFS6elEw5J1R6z
	jo914SsqbiKKpkMqjE7WwNhRJFOlLkyzPB+S2vNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648806778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N7s+/nYV/vI7Uasu1SVkSzzITiQnafCGpN4AT3n0psk=;
	b=gEMeOXLXKc4Cv7GuvMp5t52S657X6egPu/OUaAruZ7i3ywjYEk8S3DmsOW5PwO87
	TSfOrhh9qy9PLe9T7JcA59lc/6Qm9MKnQZ2Tw46gRTEbdAWoP/NI1s/w2IZTII0eTYh
	pWw7iqmpjFsGBitUO/r+pGHxLZJ2mT9Vs6pdBUus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe48ad5d1-fa005475-54cc-495b-b7c6-c5cb70f99ed7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e037a30292c16afcf7a28b86a9ad9f79672acdf54fde327255899d2a417ee766
Date: Fri, 1 Apr 2022 09:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648806778
