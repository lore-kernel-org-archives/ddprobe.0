Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB5F807
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 18:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649530378;
	h=To:Subject:From:Message-Id:Date;
	bh=VL7dAkJD8Ma2m4+R3xcxdytW6av9FbX1CtbnEQA9QmU=;
	b=eBo/gIfOVwgvUMci9W0KfTiljIcH8QhJE9OUDu8FJ+NGq3BUX+Y9seMwBZ1pYPr8
	dpV5JHR2C9QG4uhLsqCQbD2kMOAXAIACwcVNO8mM9LC8WViKyGV8KQobYbPD7h4EFmS
	4Xf4gvMuvoGqd1w8dSSpihjn7TmdXX908mJjzw24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649530378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VL7dAkJD8Ma2m4+R3xcxdytW6av9FbX1CtbnEQA9QmU=;
	b=PLIgDZ1Gk9JWRy4X0j2Rf2x5ofcHAfpFf3hF/7+/fZiedSvHmRBhNJZ5PUhOY3Bu
	lA8TNDFp7Cf4FkyTc/VhZqwqjoNUpNVRj/oug9ACzDaBfWiMf0sQRxv1mzN2GcYIRSH
	dA44V0hrLgA1abDuXyIxK6N+TxM3fxlZLZNpkleM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800fac180c-ea0a0e21-c426-4325-98bd-5c9325e673ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99dbbb8bbfe69f8d58c55446072eeed5208d6af22949ddf22dbc6c62199745cf
Date: Sat, 9 Apr 2022 18:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649530378
