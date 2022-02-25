Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696B67B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645770985;
	h=To:Subject:From:Message-Id:Date;
	bh=C7xBAlkYSDAzYtA9G7apAj4ErxDtRE/Qbfubr28fNK0=;
	b=Xzbag/uBpMRK6PY7GvSU0Fk+IHfZTrfOCbHXXC6AoT6N4Kmv1k8lzgZLGTtCvqUq
	BzHhjTxf9Tmv5UdP7CcxsK4ykAoymq3iZeCSWoOBSUYGRkHAtnsJljoxgHRJrY3mjBI
	PJKwzkwwUp0jzeFDvtkL3RpwK4+RyupZHUR6KnLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645770985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C7xBAlkYSDAzYtA9G7apAj4ErxDtRE/Qbfubr28fNK0=;
	b=f3wc3Lxtq3DelMaAmbh6nGCa7M2/H7l54jap1Osan//WbWDNDy3m7/cg+xW3kgmN
	qcxBJBGNX5Ak9O6ShxkOkSOyBXw3hSmIs6okYMZpBpjVz0StfixIpyTLzbShPsppp28
	EpvAjdWYSBeAYBQTv3kX65Gwiq2zrJT/oX3gQ8t8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f984d5f-f6c79eb8-f924-4779-bf0e-64d19cbc483a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31e50e5b610e2b925eb275f2cb2d35bf7e0e74aa42522b36e908b420f90acd65
Date: Fri, 25 Feb 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645770984
