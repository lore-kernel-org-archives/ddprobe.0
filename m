Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F745539B
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660606852;
	h=To:Subject:From:Message-Id:Date;
	bh=QrJc2sAsBmmvX+J4IRfJU9D+2ElMnNoHHbfLSHVpQgw=;
	b=Ypb2g04AD5F/FaNpOv44+tTlxDneFVROAHAW7+3UhUXhBaJTvn0sf1Y7XnO22upv
	/ElFG/jVo6qSACUgROBcF4MHZ1/6ZPaFf3rLYYj6oCCt7/aRZmqiCfMV+3mmUfVmT0Y
	vroftnHUjsCoYX2p06beOJJpFuvigt9ZSaU4m1Ng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660606852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QrJc2sAsBmmvX+J4IRfJU9D+2ElMnNoHHbfLSHVpQgw=;
	b=CX9aVa+Xa2lncAV8hemal5UdNlrIiOBa1t+4KmxQYkr2QA7pikVeYwzyBe6MN3v/
	GRQJlbhfmF5GP5Ziliz0nsAIhGyNNe15yXlj1ItmlO9rW3aUQljo7im41kZtXvmEOeu
	Ap+6UE3477JsaIrtwUyBNl/6dLiKw7IRVOP62JiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a3e1adc9-740f30e2-99ca-4245-8b9c-cfc7c10db925-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04b09cee3cc82ece21004f1d96942d0d03ee246cee4c94e9463a99be2aeb2101
Date: Mon, 15 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660606852
