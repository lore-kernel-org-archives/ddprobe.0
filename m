Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC8710EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646587285;
	h=To:Subject:From:Message-Id:Date;
	bh=5TKv2i1MdltPuZH6n3qoIpRrahrw8ssFUqpf6icGy78=;
	b=dVJIcwGUdaPhqGJVFcjf32oFqd4KIV7KGv0vQgXzgQno5A/PjOs5lJt9Zk40hbqr
	lhJffFp0Y5u4RtH1ExM/iaOlda0OhHLpp68aHa+FQs+OihzzvlFEStIz3115ozBfPnE
	G9Ihqyt5Xjk7O9AcFGAHtb7Ig2Pzc81NKWHfIPtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646587285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5TKv2i1MdltPuZH6n3qoIpRrahrw8ssFUqpf6icGy78=;
	b=Ti4gnRVh/tsQgyk9y3ijyYvuo7o/AFL/z4keAOrq2HozUJ4Y7yWkh8XxiBWubs8D
	iUVVW3Fh8wP22yWR8zPNn/ha7odA+63Xto0rrUP3CiLQwBJjZsChZviQG2EXjNxuDZw
	sNZjoi/+SEY06DSXeJCJV2+A6UcS55Sy63C0TBeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60400d3f-15bc0e19-670a-43da-84cb-bd60fc820266-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0e95636a132186a02069a0aa1db872f8b44c228e5c58dc23293f00020d56a8f
Date: Sun, 6 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646587284
