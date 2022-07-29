Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD3D1360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659091852;
	h=To:Subject:From:Message-Id:Date;
	bh=BDcmBH6ln9KiPsBBr+Kd5WsrgjZJlALfdAL1zeFwbY4=;
	b=H47QMPZoAcBkDwjy9IqpBqFpLVLjg/7y/6+mmR5oqYD6BA1GgCjdLfUQjktb8moG
	Ao0Vq9jgOtB1YHcAyBURvmSYkaaAYqYdNqw8UuQin9AwHA3/3sStWKNno//vO33pYib
	qZEHt70wA5vlCKLXF2P1gft9rFTLdxPB3dSp1wB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659091852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BDcmBH6ln9KiPsBBr+Kd5WsrgjZJlALfdAL1zeFwbY4=;
	b=ElDDM5D0hjlOjHKADsNgcPqxApHJMWbixgtblHLIYRiqXx4yNX4g5/v68Mjxaunc
	MJi14IfnR0Jjrnr8rjvNiPpqGxspYX78dPTjiVgM9cQ4WE7JqzjF6wUVCSl7QK+bQHe
	9Nqfoge3dRcXF0gGeb/FPA5dugqlQwOZflkb65Zo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249949d01-a0db7054-a0cc-437d-8f67-1f20cb42573c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00f85c9736d3cc648b43dfaab9f5985da92ed2ce582c5268a4808222c40cfa20
Date: Fri, 29 Jul 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659091852
