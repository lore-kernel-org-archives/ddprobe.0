Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755017C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659845452;
	h=To:Subject:From:Message-Id:Date;
	bh=5EcgInn3WDxV5MFQrNEBT12PViBCMsEJalz6LRq51bY=;
	b=a1ixRnB5DSS+4IneY1FhW0fZYTCN9DRmOYaUXwsGcNdtWZWBhIMeZ9oYRr6f9bb1
	je67lFLUHc6OJdk0TD9AzqukwabO7pbbXiqiopVXkJ20ebDMFPuwtJ/TxpeVPz+Yt6N
	Q8SkIwE9KuVoFnw2eiNOEy3/xH3a+Q/rxEl0nW1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659845452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5EcgInn3WDxV5MFQrNEBT12PViBCMsEJalz6LRq51bY=;
	b=IS2llRU3oTVe09PqE0SB3An/+HXx8RaDKT6Ssk3eBH1rtUllSYu5Y776jtvroj2D
	EvE2gYt/RjEuTjHRqrP1qB59wl9+qk/KjtEx2fRLdMe8vbFdHCEUbCFQcFSvB+4KVew
	Adhf3bNTS/M9wnuVCOp0tJoBDN79KvDOMgPKdcAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182767fa323-cada0a21-fc1b-41ee-a34d-d596db897395-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d088adc3020404b67a27c843e7b685a16f6278980222d1e9b3d5c76c3fa5b13f
Date: Sun, 7 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659845452
