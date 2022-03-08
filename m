Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D89A4A8F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646754084;
	h=To:Subject:From:Message-Id:Date;
	bh=GJ2Z+KyXEYZXxRLXkPfXKBOvilYTErBm7Q5lAsE/8Ng=;
	b=kKj6Nd6ZjQFGfi1RI6JGINbgh/KKiUC/NQtH0SbZAC58L9HtAsoB1esHnE/ID+oO
	WnrJ+8IDFJIq89w3v/Lf5dZHT+mbqa2d/2py+tBhiKnKRdac29+HhkbMKS+s6u+/dGP
	YN8P+4KLp68LJBcV8CuKzrHWQcKRNkbU2B6YlIuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646754084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJ2Z+KyXEYZXxRLXkPfXKBOvilYTErBm7Q5lAsE/8Ng=;
	b=g3S6/O9Gm3bsPklatHJ1DbbnDPK0mA3SAqCgPdJEhVOWkGdCKUaUW5k1Vib6mVq8
	drLIa7a7cQVMqBmalbv1wL0MCKluM1eim6KSVEmGCqS0Ey3AgxEre/BNEwdeCLzeWPj
	66jFjdZ+RVokHy9HpUjgGo1DnBjqOiAC0w4Fp22U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a313789-5648c9ec-f0d6-4fdc-8be4-44bdf47f5100-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e21baff418bee8605131ed798eea64c0ad8a988d20b6f5520be0f61f40d21a0
Date: Tue, 8 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646754084
