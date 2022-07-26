Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241C9621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658806612;
	h=To:Subject:From:Message-Id:Date;
	bh=MJUgQvdDINOwXB9TfR3ICO1eeejz04ZMxo36X6qn2ts=;
	b=cSzJsJ19Eg/JNQ1n5y/F0G7vX6Ry6rBsNUMePWLMhO0HUPsObfK5bSl/smdrq63u
	i3HFheU2Zcp6ZwzCOHSGWYe3TmsNETYlv+2oMfbDRv2bZ/7sjFVL6i5hK+z15NzxSwm
	n3qBpzcaEUOYmOHnd7NUDr2KKq8QjLXDj7lrH4s8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658806612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MJUgQvdDINOwXB9TfR3ICO1eeejz04ZMxo36X6qn2ts=;
	b=J5KxVJ29M2qBcP701fQFsB67pWPrN298tzjCkHctt8Y3nN35u/gOnVzw6JGxm9HA
	ltPaoIHU7GlaR1TwI/HWiItlgo1raN7IiO+tdJK+06yYFoit0LSszy18w1IhbqOR6mj
	Z1DXwqfcjmitOVKSTcVbOllxMO1Vfup2i0UUZQV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238943137-87edb51a-39ae-473a-9fc3-d40607cb8dde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64737a3a3f8c38d5948bafd1507ce4085f75b0ddb16506a7c858483a5297de3f
Date: Tue, 26 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658806612
