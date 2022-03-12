Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E6E36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647074184;
	h=To:Subject:From:Message-Id:Date;
	bh=pP9BXdm9hQagyK+byvzRmeYEzXHM0YteBJKZMcLJjHY=;
	b=TzA8Er+rDLasNXnRPsy9pWFYEOHqBSi8/ZWufMlWE3FLoUv2277OMHJ1A2jEvVvp
	il4fGNvfg6szFhYLwbQneWNZT0yKsokNcHGBf80DdMIE7mXpHmqu1CeNXCvcQf3F4As
	1DjwEZ+jpGrOoyNtKRjB2BwOz1q1kmIVRIk4FU5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647074184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pP9BXdm9hQagyK+byvzRmeYEzXHM0YteBJKZMcLJjHY=;
	b=EOMIGhO1Z/qSfyC06eCoItZkWhA7ebS305JYpSmRlXWQBFBqr4wkM04J8C0DE4u5
	ywxJtL+CFgFVSxtQlx7QkHrqMgONNwJfyQ6Pb+bil3okpbVf5yQ2reHbi2Ytae1OTnZ
	hywI1PSStuhI8Z7PRixIcnICW/+9vcYNPtksuT04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d458e27-ed67e144-3bf6-43cf-b913-e7b89241c16d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddd1d6ab8677d7036637a872b61efa21925f937015963218c43c78de90fef94e
Date: Sat, 12 Mar 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647074184
