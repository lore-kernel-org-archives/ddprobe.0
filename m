Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD665CA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 22:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646950885;
	h=To:Subject:From:Message-Id:Date;
	bh=3DR2aWy/JxmCfN8JbQ85SUvE/2VwQWJ8vg5KA7PWsNw=;
	b=Et1nzaJzVCs7GnjbiEWH3T9cudpNK6aDf1jYQPclyaC+A1M36FDPXWcvLBS1bCs2
	JiXb/mpaf3seErwAda/l3BKa/x8NizIRUQEIABWNXQYvqrxjYlWqwhCKcQXRHtgCaoL
	MkVUYLPLky33fqeRUHbuAoU2ebbNdfXYAVHFCg+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646950885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3DR2aWy/JxmCfN8JbQ85SUvE/2VwQWJ8vg5KA7PWsNw=;
	b=ULil0IQi7ihl9I6L4/l7g/sO3BZ/KYs++f+tNjr3+YoUx697ICRK1J6XW9NpPKNr
	GmcVMwezE+FXB5/36XCpPoCs5jtmLEAztkuj0/jMECY47LuH3h47D6S+FLgRyXPcMMQ
	ec7B8ifytulIfSWpVpbPi5f//W824dbKOk1NEyOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75ec258b-e623a909-6769-43bc-b4d4-0a5f786d3e54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27b4f9fb50d6ec02f12dedcad42ad9746960b3983c634d9944e04fac26710cf5
Date: Thu, 10 Mar 2022 22:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646950884
