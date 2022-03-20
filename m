Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B641933F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647790285;
	h=To:Subject:From:Message-Id:Date;
	bh=PLdKTKAXua396wMby9F28+3I80WPaClfRwA2foqQt1I=;
	b=SRDpq002rItodIZGmqX1fQR3ykKWFP9tmUV+7Yx4ucja2KWJqSeiuRqMZcUhdgFR
	Es+/OhX/J4GiQkia2yzE1AF1RhBv2KEn8pquABveXr46ZRNqI9gLN+TFQ5pzvonvUsS
	HPjoYo3fJBQEHEGQOgjBWGvQBNG7Rwhe9rgHk0Tw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647790285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PLdKTKAXua396wMby9F28+3I80WPaClfRwA2foqQt1I=;
	b=efIkem6b4Pzyrf4/GU/V8XNMbfaypam35KvjXbypwCPGJtaItEdsF74mczhaNTBb
	R7xd9Uai+RVABIGoU3D58dZYrWty0qWE/AdQZ6bSCKX1XLP9Gy7DMcBm/74+EJCDwNl
	p5KA+yYKoGu2D/rkY198MKeq00QFN9ja8/PoH7A0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7f45fae-63fa22a3-99c8-49ff-9f8b-8314d182d04b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17a1d74e1aeacfa0852415b20b6bb16297d8dc0110475856f11d1890fb611b3c
Date: Sun, 20 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647790284
