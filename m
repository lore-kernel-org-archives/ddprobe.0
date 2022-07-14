Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F19E4A19
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657808812;
	h=To:Subject:From:Message-Id:Date;
	bh=pbr9Fg0//6B/NHzY+Qi2vt4K07NLQ8aumOzIlyIa6Dw=;
	b=ZkdDszG1hSbBhGOPYtMTJVZd2ZmNBc+BiqiWgRBZp0GSuc1KiucPSbpNagLj8PRC
	gRveWshR+KpN4vFi/5r8wp2Ngr93o43ZnY6Oh2OTLju7LO2gmgJ+4HlyQwltG573tfM
	u9J+gh3PCe59eNnalaZjkwiKGXmWuMKkvVj3YocI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657808812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pbr9Fg0//6B/NHzY+Qi2vt4K07NLQ8aumOzIlyIa6Dw=;
	b=Mp4hybJa/ReZhO1XBOwfkUUGhLQPq2/GBkrVQ+mzACHakfGO0InaDycw4j9Xhz42
	AaW1QnoZ+Hg3izX3DXjRWhOQ9r+5O5U+vhFTri3j9T/YuDZo1dXEsuCNBT0p/crIvVR
	EPCOqI1VbhdPOAGd0VZ4+87fceYJjFiF9VKiQEWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd1af936-d01855a5-6cfb-49a3-85fe-6548a9d986d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18e4b146f09ffba337642d1abccd263544fc785912f1351a05093727140e9491
Date: Thu, 14 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657808812
