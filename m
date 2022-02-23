Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9FF64E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645579285;
	h=To:Subject:From:Message-Id:Date;
	bh=VAPkJgzkbR0LUvnu6cGbbwRWqhWjMAQ15AAU4EvLdkk=;
	b=MKjm8lmd5EEmGxv3oFSKkP1sBfU0HjKRZoTf0ZlrFADZpZfi8NgfZhjjA6su6HhX
	10iuC556A0qm9IQvAIfBxagmFWcKUMqcZ6etuMQUA3RWPcVGxKNlGGRGoPWixLulFlz
	XhD0B2F95oBh33lmMvZ39g+vJwAJ2m67qx+0UZgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645579285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VAPkJgzkbR0LUvnu6cGbbwRWqhWjMAQ15AAU4EvLdkk=;
	b=EHF4zizKSdj5Ng06HZnRJPfflpR9qVos1K0DqWcP0N15RAHhbycBLOujXUadBRPo
	fmhjbr9d6wH2Re73BDx1VE4nZxRwEBr9hMjIRWQDbBpqTIiUgv2AaUhNwioW3zb/oPW
	iDL8FBPn4XYZa4c+O1oZJkC0KjsPTIOG/YHvBlvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f242b3134-91b49ad6-76d1-4a5d-87f9-3cf397247a7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3498e8df1659a229f0fc1c31a8e0dcabfc1465626fb813303be6deafa57dcd2f
Date: Wed, 23 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645579284
