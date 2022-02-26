Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714D438FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645912284;
	h=To:Subject:From:Message-Id:Date;
	bh=Zhvl6gsSdwaiezmOiMezChWmOYWRbUXBFSZ7nRqcgmM=;
	b=bbGBGygxz897RHxu5b6NFOsHPSP6SG6m67SbMPQXmAkkLBfzMC87GWrk8a9j/8Nl
	nq2YF+IX2Ca/fZOXu8/4exgpr7k1FuKMIYcnZy9RWZoaU3k+b148x8QnQVGfYby8UIN
	cyvUj57WEuDowGpD3ROtZE0gVJIknRvMMccX2OF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645912284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zhvl6gsSdwaiezmOiMezChWmOYWRbUXBFSZ7nRqcgmM=;
	b=IM1BrFHMtF6vPeQCRDrUDraTULMpcC7g2BG+TM2Qbg5clYBSvpNV4wltelbnV+sA
	drzDmtVJkp+D4KkC1cpxtHh6go0pzEylnrMqHJeQMTcvxOubyl41C+rKZFQiTBljrra
	oDsz8t3lgtalaDq6DkrFpAXRSMEiN8xoXMrJlcfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38045e7a-75b0bde5-24fc-424d-94e6-2794eaedd8a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4238102e8cd7b28d1b09da73c55191a42a7d72db6d22b6802c587c9cb0a905c7
Date: Sat, 26 Feb 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645912284
