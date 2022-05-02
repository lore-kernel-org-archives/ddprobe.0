Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC8328E0
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 12:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651495678;
	h=To:Subject:From:Message-Id:Date;
	bh=SwV9xzWKyU1wZ3KuXgLRb5p+r+RBKkpLF+aYU0rUICQ=;
	b=FAtYBXXDSmmEA9+5bUCJKLyaPvkcNXys+yD9GwWCPpISOj8S6P+D44WyIeuceB84
	cqPo7A4yzRDjg2cxRJrWlj6upDTQhWycTX2Q5LETaI5Aj2LC+u+AiFPO8T0wDWu+D10
	SDDUrr4n6GojdAFXegF7xBBMFai9oS8TobhwQewM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651495678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SwV9xzWKyU1wZ3KuXgLRb5p+r+RBKkpLF+aYU0rUICQ=;
	b=PkjB/r9Jrimyp1Vwuk3bkNRsyOs4dBPVGWsnK1VRdV95ggSbaRLqtKxSVH2Ue8Sx
	U5IgyXFaC425ooC32K5TKOmd7YtSDf5Ztnco4/n/p0Gc19j91U/lAUl308HXc7040yn
	dP06ONbLfYn0053vw0gcdONgt4jUUnRk9Ytjo1J0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084d0311e-218e08ab-f0e7-4f25-8845-8af6eeca284d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 959a8afe82831e9c38e58188fc1916598e421a047543b854e80eae036161722a
Date: Mon, 2 May 2022 12:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651495678
