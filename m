Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703502917
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 15:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652281559;
	h=To:Subject:From:Message-Id:Date;
	bh=P49OFpHg4UXB0x2rrxqUnzxw1YoQGJZr5RrbgcupEYQ=;
	b=GmZ1pOnEWGvke/IZ0IB9VFUulyxfbCawl/+ghktIe/RgxPfQn6tnDgsionCkdgh5
	dmg+GGNEihcr3kQIkHeumaG/mGccOimpdoBWyYfxyFqYovmKZtRITZmt9bHEcnSVVXM
	NxAucEOea8l8uovCrIwG5eICbsn9GSQ545IMkTgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652281559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P49OFpHg4UXB0x2rrxqUnzxw1YoQGJZr5RrbgcupEYQ=;
	b=RKeSQrav7wE1g3/uBT06OU2kUClbuJiJ7GblzYxcJ8D4ygEmOdsv3xLlpIqxTtf5
	wXL0reJgYAojqxI01DX3HDNnMSbUld1RsdW1Eio9fr0Z2z+fgmPWMVRRiLg12r5R0xm
	XniDQuW2JYnTZpIRbIk+JfbEa54KeNQcK4k70r4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b3a7c9d4-e3c58236-e0cf-48d7-b290-5e0d3f875392-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 914dc8c42a4916ca5d19bf833e15e1a5a4017e0ec1e9da476c25923540ea837d
Date: Wed, 11 May 2022 15:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652281559
