Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8499B369
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647082885;
	h=To:Subject:From:Message-Id:Date;
	bh=wo9k+xp3f7fKpWvr64PcS3SDmVAAtdXqNJI1nAuk9bU=;
	b=V+66ZsopOoPas4r0Ai0cAi1fEA8reILVkIei3OVTmJYUFv8rKfwiD4qKIPwoD0Rf
	2+JWgQl2OQkcuCydILMgQbC2JUpcp3UmVPKHWN9kXrZXV3R6A4K/zoMP65XuylPZtfl
	JDcVQe1TnPkZJE7zR6r933ozIWE2tJ1IeaGs109A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647082885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wo9k+xp3f7fKpWvr64PcS3SDmVAAtdXqNJI1nAuk9bU=;
	b=l1D5436xoW0NxE14Q+T8m0MtoZQVlXdp5ApBST/QmhS/M/vbCtRq3Ij0U9lfVVsP
	fHiJuSo4qur0nXScnDJGWxRYJCzix3iYFaBh0x9CZaNmU1jhRuDe0Nx0oPxR0xGp8nD
	bXnqkbLIVs7ASHKCuJ6qnoKYTJX4/vBNAwsQx0jk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7dca4e97-671e3407-7796-4403-a3ba-9d0c6b5ebf24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2627dd3bc312c446c478d3548a7b01d2236b129b8b0b5aa82eb2098f73bad8e
Date: Sat, 12 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647082884
