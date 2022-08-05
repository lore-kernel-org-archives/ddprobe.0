Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72614A3D
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659675052;
	h=To:Subject:From:Message-Id:Date;
	bh=jkDAqMaA0+pAZQN+zcBdiBSlIFwyCGNgpGPhXjm8WLE=;
	b=C/BJancEFwLWHjwLS6ij9NV0LVWLzC0q8K6tj4Y7cjn+WKJCq/dJxJIBPp/E8iGW
	DSc+cJ3SqwEJgB1Xyu1pRo4Wf4iv0bFcGZGA3BjihOcbMz9E8YMH9/+sbwMY0RrRHJX
	Ka7TuY/2mFV3gru2q0/K73folV/D36WW/MUM64uM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659675052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkDAqMaA0+pAZQN+zcBdiBSlIFwyCGNgpGPhXjm8WLE=;
	b=ED42hRAJQhdpIF2AvA8EB4cMXoqmul2K7PrLjkr5DKk8bDDh3U8pximBBNbJVuhs
	YLDtLA30XGN/VtQx776bWv1EFnc950+6LK9vFnu7CzhYtPYySpda/d8mnvWqi3oBbHI
	AZVhQB4DJowj3y6ycH9+N48ndfFQq2WqNQXjxh28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c578a1b-d7aa3298-fe85-471c-9f3e-8edc35921667-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d02c586d8d25de5dc5837924b4eba0442e545bc793151b4e68dedddd82fb798
Date: Fri, 5 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659675052
