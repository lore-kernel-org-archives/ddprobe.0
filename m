Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE077C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646424685;
	h=To:Subject:From:Message-Id:Date;
	bh=g0hZrfUslvlm9V0byNrus9d0ODXfYR7eZCG/25a2pcc=;
	b=I6ryAz7qh7Rb/DVzenzc8VCkmeAA036Ve02a9bIrtIIXPn1xpcAQrKQzR95Q7pBD
	AeVg+1fIPmG1VhJc1sIu+3ZEMxVhlZd20PIHlLplj3VSoN24bvlj0irW4vWQphhdJpA
	TI56++QupUg2SaDI1EVxjiBKZa3lcU8V3zmGxsIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646424685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g0hZrfUslvlm9V0byNrus9d0ODXfYR7eZCG/25a2pcc=;
	b=G/2cI4jxa7/tnMGCN34J2sxtDz7ESLI8c/STZPMq05hQMogvD3K4IIT7zKWGAxUC
	oFbNTqaZ1zAXsckYQf1Yxs/hOFG6DCp9j1SqUpZbu1sDFu6CqmRrmNK74Iew8x5FqA1
	9e7jy5ZwmI30rqAvpH8WfEyZ4h61bZQDkOzqXZaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f568ef8d0-927f64b2-f677-49ae-886d-fca0e9baaf2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0265a71cb59198d8eab61f477b2086633c33dbeecbcdccbaf6f15cc7ec43a00
Date: Fri, 4 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646424684
