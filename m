Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFF928FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645819285;
	h=To:Subject:From:Message-Id:Date;
	bh=EDclmXuS1s7gatoe5S9kSNmBggNzU9hzN8e/Zk13mNM=;
	b=CJVE2zR3b0qHcQsy+djkS4es2APtVXDObK+VMpv/bhQsrpcJxflVJ+c6OzoqFfDU
	/RfvqNFFN+nGHvpA8VB1U1ADUtUH8sUr1+PxEHjLKPMAhGaA63pHPcsUaVStPyRFdP5
	9NaskYDn2MrqE32xWiNfNKggoyAp0Mtr6VrJ892g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645819285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EDclmXuS1s7gatoe5S9kSNmBggNzU9hzN8e/Zk13mNM=;
	b=VYZ1LdwWAX4qHfhThmWnxyZ2wKsq1+bQwzut1al6FuVnKFn/rZv3ODiHi6oo69OH
	2MGNjDDHd/MN+eLfNzuVvTPGwo4QElO+ORyYcChFn4gGSnEWP93iz2/8EWwuKaRQ/Yz
	uHu2upbczJ060az8ARtgE67epSLBh3ew8LrBY+Dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32794d0f-d1da0172-6279-43c7-8ffc-a2162e9213a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b285a2ff0157c17ee6b8b0ec3b40489056f6ff48fb3d988b1608d14fea11e4df
Date: Fri, 25 Feb 2022 20:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645819284
