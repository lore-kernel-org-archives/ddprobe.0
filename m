Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6657D7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646372484;
	h=To:Subject:From:Message-Id:Date;
	bh=en4CtbS0CYL4ZcxeVLANQTuNB9CNTX2zOfsL+kLTwJk=;
	b=ggeR6Ytxz9ihF9iiYYG6v+J9xYAZOZb/8KSBIE1Y1oDU6cSHhbGc1ieh1L5B1RwQ
	DiIGc3l4+mR7ahNxyrbfB0Ae6zD4LqpZMQKzKg2zmMuO1xPqxTVl7N46GR4pgPnhSdh
	rFNVfscE6bDIHrqjdLsvDitxEZQvLMMrBV8Q3O1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646372484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=en4CtbS0CYL4ZcxeVLANQTuNB9CNTX2zOfsL+kLTwJk=;
	b=GucEGbvRtd4II5ffO/jDCzz0GtJAJ1mcHJnazYkxs2OFf8Y88YfhzcT+AqjT4/oz
	zkXNtHck8B8e4aEWW4NSlrb0O611U/t+W//ztObywAjnKRMwel9mPva42Fsl6QsqcCP
	6X+IF6IVRX5B04dQBjJ+pIy6eRxer76XaaigqAMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53727673-37bc0927-a97e-4f4d-bba7-0a0391ceb70a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 246f3926260df1d3145947e2576190ad128556e9f7cf40ce181378066175c1a8
Date: Fri, 4 Mar 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646372484
