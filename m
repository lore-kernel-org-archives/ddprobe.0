Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5727A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 11:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654772519;
	h=To:Subject:From:Message-Id:Date;
	bh=HHsS9thI/gRTbLcZl5R+SofAIXmb05bqYBfhRgbXNQ4=;
	b=YjmKt1kjU4LLCzC7UnyxKygY0MeFtNGa68GqpQCg2aYkQXEqvhOwwTdaI9/QmZmq
	4loRQjlvb0s8MNWObbb6h2pCaqbu9jseQ+N+0k5jhANgwlZklu4hdDaItGq4+JjHIlE
	fiazC1C7i4H3U9msWlxE2KLEoZrjfBWLQRbLI8ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654772519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HHsS9thI/gRTbLcZl5R+SofAIXmb05bqYBfhRgbXNQ4=;
	b=eM9vvuMXyeksJcsBVBxWKW3IoDdC0ff3CKCvIUxzBzkyRP+BJxmkv5/Yuo5w3icq
	JCZY4CywSVDiajqxMp+X48utzhvaGKK1IKcvMRL7+YchgVM2UAHtI3UamlnOtkwq9ho
	xhLBZEIVsgxMrQOIc/MQaoSlYKM6B+ygM4RUiD/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814820d17a-5af0055b-9478-4e67-9041-8f9c5d83ffbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b18800d248d1bfcb918cb98e482e264c7a8d9ebaf76c9c6aa0404b2e66d596be
Date: Thu, 9 Jun 2022 11:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654772519
