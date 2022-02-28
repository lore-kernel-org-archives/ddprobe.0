Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC847B
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646006785;
	h=To:Subject:From:Message-Id:Date;
	bh=0s5crT1ibo/IawmoNxS4jUJYY03zMX8N4LHpUQIOG9s=;
	b=ZQw/G1HPa7QxNx0iSTGudmIUrKRM85fwKblyGYx0ChGoXa44oDktSUUPUsAe7aib
	9U3AoEIzOjw3WaNRFI0XyHj+MU3QZfTopdjZxuONn5mO4k7ZmYu0fJOjvK9eTDbqxeO
	1Sh1CFxIBQ9tM6pZOq1RP4H2+QJ46jBRCpX59E84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646006785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0s5crT1ibo/IawmoNxS4jUJYY03zMX8N4LHpUQIOG9s=;
	b=STazr0EXrquKywJ/PczR/wnFrqxN0Whtq9OgI1tGW/TwxvWFm6gIHNpqbnvOGIKn
	FcQTQtrWAaQhsgX38MfktO/pvNDlWNqSo9GtmfrlgZ0UHtGniP1TRf4EFpIfJigL+Sr
	ZequNdNm3lYSOAc7fqfux1a8wgSxIlh52JyDzVbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3da652d1-9208ee73-4fe6-4bfe-8208-68f1b0399467-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a93090d3ed04a27e9e2c787a4ce04ba509f585e9454b2f329bc09d91985edea1
Date: Mon, 28 Feb 2022 00:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646006784
