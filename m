Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488857E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 04:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649220658;
	h=To:Subject:From:Message-Id:Date;
	bh=NeNuIc/xheWfd8qb14cDSBFWBtx7Ud+h80w16obTfGU=;
	b=jFfpaPWsmPtfRqfSMN98EihiRSdAAbqxQ4dKO2cz4JnaSMNTmjqXhqauHQUmvFYP
	HB8ucvbigmz++OLah70wsGitYV+kGWZy5sobsq9v4fZqUBH7dQGqgyd5tFvIjixTtdJ
	4qmEh1pvza4pyQzAmIouZOSPyoD/vdb14284KOo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649220658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NeNuIc/xheWfd8qb14cDSBFWBtx7Ud+h80w16obTfGU=;
	b=XU4GxVmBopb2sgKEr6COtmIENG/V4DR9ZKSdsvMjMAzstN5nc7dTxsrWebHz2v1h
	2TPEynnREag6JS4zofSaw5PlXUnd5Y9gx+2EqMOR/7xBqvfpj8OW3ID1qk15nyfIhXr
	IvO4xZOPbPyHtWT8nwUTYOVdrjEwZPlqSRUy5czM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd3624a4-ed0ff9c0-5f31-46d7-89fa-319546842586-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ead863d35b405bba7c57b9aaef124c59aa11d1e5d029647be799e342cb1aede
Date: Wed, 6 Apr 2022 04:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649220658
