Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71438370
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661072452;
	h=To:Subject:From:Message-Id:Date;
	bh=M/Gi5q1UW3hiusEh+KCEoT3XQJW5vWH7siS3hFXBnus=;
	b=dWifHM0WogdHyykPSN6bFlcF2LVYTgZP1xDyG4tsTYgqy2XpvcysK+VX/0KdTOkm
	jEPOAfreev6kTW5ekI0QBi/HimHnhsIe71GSJwcI4o9RxRz/oTaLdBD7lCxkOxpdc80
	7qkKf1GvOoo42/BDa8B00sJoLNp4nzubFyqxZSsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661072452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M/Gi5q1UW3hiusEh+KCEoT3XQJW5vWH7siS3hFXBnus=;
	b=SshI4Hwt6OWIPZ5olRO0fONq3yxLaapcm73cnYHqJNq6Cgkaiw0249JEj1mjaqFn
	hPl6PzO7whgNqIP0S0ORoPDxd/I3qxipDIGgRbh3qS0QdaTfslanyfB2FSn646GIhgg
	wBIoFIwP/up4xqG0oRp6VER2yAqZAUKcfLnJ0+2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bfa22c1b-d54a7e4f-428f-4968-b715-69d552955b2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec5ffb98126c3281570a95daf52d9e952cb6a039d50986b1450616480d8a94e3
Date: Sun, 21 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661072452
