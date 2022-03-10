Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6617E7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646893284;
	h=To:Subject:From:Message-Id:Date;
	bh=XpRy10iajEgWyqoGdhV1xI5FRU2dUT9dQJT7lFb3hKc=;
	b=NE7D8Gf19EgUylLwaNyJJZjeWuqB0RO+kskET6+68jwPbDg3XxBW35lhIgxrN/xZ
	d1rVkImoFIb+CaI4m+z0sNoleEKJRLlaOHsFiLq4OhVgPMzuhWBrrpHC3xcNg5Lvgwk
	wEITCkfwWVqgXgyZIucY7ox0gxqmQ4aQe1X9pCqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646893284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XpRy10iajEgWyqoGdhV1xI5FRU2dUT9dQJT7lFb3hKc=;
	b=cBf1L3Ml7uN5XsYBV+sC/bmmvPitiXv7fAR/480SuUXdUcXaGITApygy2F3HDNbM
	Glefi03CpXIa3QtjNpi7CYfXhbK2nZKFx7Tz9yxfrq66mf5QA8haKA2Bv+Rj4dyf5bj
	K56fuJgbjpY59u6/54A+4zq/OI2V59gxmMT8bQso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f727d3d94-3059c67f-35e7-4c3e-98a7-bc41bdfef801-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46534de796e5433153bcc94c31a9b142181bcad1a73b685a6bda74c91c2e54c8
Date: Thu, 10 Mar 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646893284
