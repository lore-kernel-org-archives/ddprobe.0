Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A43610E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660969852;
	h=To:Subject:From:Message-Id:Date;
	bh=cDfldfPVyTs7w9Rrfs2XHVmErOSqosDIn1YZd+J/N+Q=;
	b=D+q2cAOUPN/TkwH9GoiWYn/n5pVUxqAuPeX1IeNGxJDMZOJAZCHH3rAbfZ9g2SiB
	2jwo68R4Tsx+mai8d56I0ba+F165fSRsWmawDwFGMboCyGrKLvyEHI9zwBq/l9XxjX5
	Xc7oWNm+rL0k7XwQp8i9Rh0sAccHVeeEmlYJwNq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660969852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cDfldfPVyTs7w9Rrfs2XHVmErOSqosDIn1YZd+J/N+Q=;
	b=Zn2CWL9DPEWh+fqthpe56KeZolampRP5avls3jeoPU466KiR2ZvGRJGstGV9v5QJ
	xaoWugT0FLBTqhHB4AmBwKucUVMG072sDcq+aJnP/FwHXVUdrf2lY38DtAYfNbyRoNN
	Fsgd98MxAq1UsS5jpGMTHfOj3fZGmhdky7+onIJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9849e86-285d551e-9325-4259-b083-168b2acf6b09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f16d5c83fa95e850414c9c371ab6128fcb50538fb0772fa392c00904e596085
Date: Sat, 20 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660969852
