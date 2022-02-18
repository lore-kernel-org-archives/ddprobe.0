Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55894C96
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645222585;
	h=To:Subject:From:Message-Id:Date;
	bh=kpoexAXu5TB1y+TwdMtALDCLQIutp+nPBSOTDRbs490=;
	b=F08pflJ7pP254B26GcMX2aHsA+Mb8sgh/T6/01vP5UjPWF+1U9oP5lVkpDgP1SNr
	BDZ/CZ4LVXaZoaQ57D9cEbXNNppxLArhbDp1XtgPYVc/1QcFCvNziffO4tnLAB3ALlx
	Lhc+rD0uWqaQo8fPLA6K/0Fe568oVaneStsZGmH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645222585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kpoexAXu5TB1y+TwdMtALDCLQIutp+nPBSOTDRbs490=;
	b=cyfE3XaAKaKM1t5VzGA3GC4dX179/PA+hVFjpLtiSmaJfkcWmVVuS6dgK4n7LATd
	q6Zk0sQ/eVeJFap64DlqUsNHC33WHy2bbB9ukV50GpWUcEJFpU+hVyJ5XhBfqBVHi8V
	xDEL71EY2kJOOWPdrXMQSWewJ5w6yasD8sDWjl9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ee86200-4bc4319f-7d0c-45a3-8d9a-506499de0719-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71b18f9ba9549ca837e660926a17db3f14a386fe37a640f824f94b509cb29d95
Date: Fri, 18 Feb 2022 22:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645222584
