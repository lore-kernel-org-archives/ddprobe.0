Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA7B4C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647673585;
	h=To:Subject:From:Message-Id:Date;
	bh=tx5tv7x0GRGlrqbcbzSJB1d6eMDzWORZPEM2jZcjCBY=;
	b=PtF502M408d8WiL/ojkg64WhidjfCnuU4Z7CvJIbHKnAm6yvdFFxp0T9v4+kdTKT
	a1FwvinrF2D67UmGPS8lKi1d3gWTjO2Ic1Z0Ytr9eHitTXBeKLqmc8NPZmUMAVZc8t/
	4ALfF6Qg0vBJUmsUimRjkXUg8Y7an6snSUtKCams=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647673585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tx5tv7x0GRGlrqbcbzSJB1d6eMDzWORZPEM2jZcjCBY=;
	b=TEXx0ZPhHH8DtxQZnRnsJqpaNCo8VuQKxHJrCoLf67vfnmnNnuGD/WktrMXGKyEv
	THwfn7ZzFWYuD1RD0dMZl6h5BMl0oInnWlfGdIhF9VXyYBnRPfudnfXbAvE+j/HoR9l
	X3hLaZY2JbI6wH9EEs+NRGTPo7A8Rkj/Y27pPta4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0ffac99-e985ecf8-be7e-4f11-aa60-47e6b1c40fef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73e362b50c836c30194b5d913bf8be155970c67d0365502888d289901bbe5c2a
Date: Sat, 19 Mar 2022 07:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647673584
