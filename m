Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612B115BE
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 03:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649994778;
	h=To:Subject:From:Message-Id:Date;
	bh=MjuYV2eaMAffuUu81jnqAfe5H5nlvjTJs8EEiUnx11c=;
	b=TCsO3XCGkWSL/V3ZzimJ3vt00QIRdBQ+SxlGNKYsTq8Z09x7TZicMj1/c90VxHdp
	kT9quWV1j8r2fRezutX2NkP3HbEWDEY1vR6jDJt6zNxdBUiPNE43tCn4dIwr8eUNKc1
	LmRu14KkEXdDwUFUCDloZY/dBMEAcmzXpfIC5DqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649994778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MjuYV2eaMAffuUu81jnqAfe5H5nlvjTJs8EEiUnx11c=;
	b=Pu+QUHeLlxbqQuHbFyCN+W3KJL1aRnYvE9CRVc6qnZg7Vg92MrpvZ1eow6Lz+xgw
	gThLmfa7mJXaWUpWUVxfdyW7VeSGCGaEE/oK4OaLPZLefwvfxhOkftnNd9DRHZ4hxfR
	GyXSJWzuTdPxAG8C7qap6p8XGYhJNTAy5hFu2g7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b5a4681-3bf82d5c-1846-4f54-ae81-b9f6c7a8308b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87f751ab393fe9ae6bf8464dad75e0233c9c7c80c4ec3f9f8ab1a0fd5eb49254
Date: Fri, 15 Apr 2022 03:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649994778
