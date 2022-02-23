Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297F56AA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 19:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645645285;
	h=To:Subject:From:Message-Id:Date;
	bh=bn8a1v+aLrVCRuwuio/oHXyhaJz+OLcNL5Y1400kJlk=;
	b=G7vCNscgpK23cz4ISEtl8qi2jK2r5ev7LmTrwytQPlgLtaTje8qQifDDaRPK+Pc7
	uMFkuqKf+RGMz7NpIHO8WQD8bJi9aLzYrrTupzDGy8ZONeXMSXIRYmi4o1ekMi8jndl
	wxvYbYCPKMBbCMD8qF640ELr+Uj7CSq0nEzpFhzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645645285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bn8a1v+aLrVCRuwuio/oHXyhaJz+OLcNL5Y1400kJlk=;
	b=mFedubTr++72F8wo2hGvQUF6s+EDUVQgKcCod+e1jbUziJliX3Bn9OYgH83oXzUJ
	0D8EIcIGz5i2hbvlmMfrz7ZIM2JZSxrm7w/gM+yEUzHMXJS9+bWRRsf5u+MvJ7JW9H6
	1PEBLLMKLxwZB2aJ4o0uyWMiJV3PVwGBTFNLEV6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f281a460a-81d1bd9f-1ff5-4e6f-8fc8-9f3e71388453-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4a9d7c34aeb8dd6335791390b48b3b61168d9c9a03426ee0ea9a8a2668a79fb
Date: Wed, 23 Feb 2022 19:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645645284
