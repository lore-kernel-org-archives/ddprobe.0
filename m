Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759215EA4
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645376184;
	h=To:Subject:From:Message-Id:Date;
	bh=z5fvr9WEBSd+oaEM52gNCadjRKXgTFO95MoZrAot7CQ=;
	b=eHn2vFrIEt1/QwQo9Goj9P+7Sx8dmxeFHL+5jmJmOGh1gNuJv+alK5xR5YBX51oC
	iH+rbn8eod4cSg/4MGevXb7+U/vjLeVv4/X3ML36QO5zm/OfmGPPyDFFrlXjZXM7r+n
	rE5R2XmMH7RjJQkHqpgvYlbfR1T4cuSjauOlh9ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645376184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z5fvr9WEBSd+oaEM52gNCadjRKXgTFO95MoZrAot7CQ=;
	b=ZuLqQFxY2hkZ/vovucaOnU+Z6qU8IXaG6uS46+kf1YODIS2gFQV/WnhX/PzkC3U7
	LfL16eNIm2aH/BlQ5qCv3rY/ZyUwhCB+ZWE30v8j1e2XgSRg1NUa6XYCvjYQuZyn1Xk
	0A+2j2L5pQ3+Jod82pDu80Onev9cULBePiYkD0ts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f181021cf-d0b915ef-922a-4623-add9-99082e68405b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d56d40c66171c68f7c203cc8954a2d0edc110331c4f215d13ab953917e10efe
Date: Sun, 20 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645376184
