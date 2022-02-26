Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE1C3D70
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645896085;
	h=To:Subject:From:Message-Id:Date;
	bh=pVKA0dGrF4q8VUC7x+CvXGSzn6OIFon1cdbD4wgogLY=;
	b=LFZU5RmGIp8LjOLzr/6lLARiAOkGUElFV3BHAqXHdEzk3/otlxrmfZOCa7eSBJxL
	b8s07WKjlqYelmbQBxEjxGS4ARes2eP1j0z7fisWWJurcHg1RYMG2tVa6mQ8UT4unv7
	EcmcwwnmOzMQU5xh7mk7XFJPJGZCd2PvqlneJcdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645896085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pVKA0dGrF4q8VUC7x+CvXGSzn6OIFon1cdbD4wgogLY=;
	b=lwABEg8cM5SxpBOuJ8IZ3pY33z++VJns5HJ7nAXXKQfWdJpb1KjuPphIpMyhLqxS
	VuRjLtJoe6oS+iKdrLNRNBCOoWB8tyd+ZL/CrD6R31jBeytu2RPdKRMbLwniMKeCXbm
	EivAieEiEPDNfD2/pMHwBAtb/5VTHRG3OepHflBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f370d2cff-f6dee161-47b0-4246-9a7e-e754e7c16168-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bafec8cd8a27e28e2578753a96e733d097792a50fa99c8cfe1d80c71fb37a89a
Date: Sat, 26 Feb 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645896084
