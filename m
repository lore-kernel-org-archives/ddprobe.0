Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7A1624
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656403612;
	h=To:Subject:From:Message-Id:Date;
	bh=TP20tPxsy4MfjcW1uwL3TWf3NympKu0iX2B3OhbvbjE=;
	b=F4ZM7APVWK2dF9J0Pm9cyioYxk2oIKpCw5JnfSMYaNvtqUbBgKIuowgs+lHmidtH
	o0TgM+vUO9VN3EGKGoiiPSW2mSkStqNXQ0zHNitC4gNo5kwyWKkO3lYGGElTH0cmkoA
	FLstIFxmRqbVGym1yTf52Swe8R6d1GQwxS+DXgaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656403612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TP20tPxsy4MfjcW1uwL3TWf3NympKu0iX2B3OhbvbjE=;
	b=Q/TXbFXinUMfSSTAnJ1RAOPst2SFNHmSx82UFFJJVIWwmoqpN7U1Orw3Usv5zANH
	wg+3UUsXobl/s/rinff0vWIS+5R9xgnBJo/fpNn4mZbq/FU4xwY/enOlbetsSLwRmL3
	yl7ZOmDO7DUg+tBxIRI1+YnnYmreqc5nGwbj8zRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9595297-0979483f-2130-48d1-9a6e-bb3a5a6220ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ae8cd705c46ce87614e1dc834fcdff79344b4ec38c93934a859e04715534e0d
Date: Tue, 28 Jun 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656403612
