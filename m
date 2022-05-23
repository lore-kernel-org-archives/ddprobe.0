Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D63F7C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 12:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653307439;
	h=To:Subject:From:Message-Id:Date;
	bh=U1h6BUXtSJb9d5RmBYacpXbYCSjlhmbjb3qkCJNOIp8=;
	b=NzmKIItMWRBztlGTOhVh2wQmFbMgN8dAwVhSd4Emksa6E8AxGcQNX118ooczTUBq
	j1Mbp9CPRzXjZYYGsKnK3s1Y/odZNA0tqCKfuowuHCVqRLoKBjd73dCUwxc29Dm7/SE
	IQHktGmA/BBH5CrWCvLWG8rOe/klKHzsabbplrN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653307439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U1h6BUXtSJb9d5RmBYacpXbYCSjlhmbjb3qkCJNOIp8=;
	b=g2KP/44VKqkm6peOI6nJ7naBB96dr2clmJFAreA9QW283B6J5s9zmuonGQTm91jZ
	BCsBaR9QWdhUbn81pl27SOLrmmX69JEcayCcw0JlPjYYp/AIKjfyxuKriyXjdmsuFQu
	XnD4NdSnEnpwaUa1EtIkcPvSV+kS9Js4VuxMf72U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f0cd78a5-d4865128-7cd0-4683-952b-d8efa834dc45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cb1b99d4e831718a177d5f24a8896e12814af37d5574876ede0a2612d944f26
Date: Mon, 23 May 2022 12:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653307439
