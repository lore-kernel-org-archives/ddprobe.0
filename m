Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9753B1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644994585;
	h=To:Subject:From:Message-Id:Date;
	bh=Tg4ASd5iYWd0W/FOodmD55mrcMU+qoZk/3G0Z9qQM9c=;
	b=cuiEQW5nppc0x4dgnh5e4Om9N7zWtkNgSrDCzqsxsUcgXuTC7fsCr/7qIPdmajRE
	8fljBnn3pYg1cnAZri4HzqDrsCZYT59om2orebubtacGrEY5mYQJJvdQRTbq+J4OylE
	b6MC4U0qCogAEXiQncjiB2+LYUSZufg7eCBT9jP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644994585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tg4ASd5iYWd0W/FOodmD55mrcMU+qoZk/3G0Z9qQM9c=;
	b=dW5L2ACSfUJZQTPhONRDJPlmpHCQadut5A8ADIiEDDZIRUii7B89LT/zlQc+Di0y
	EnMjQHc4RBxt0wADJxoP0AsHYKrUc6PtWqZS9Ld3ZXDeSp4o5XPLXousJI31RZL+MZC
	ygTJWtID85+n+kEnu8cAQ9nsXTMugKE5chyTdVOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f015160a2-3b32b880-e6da-47aa-aed5-b8740f175e68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa4e3e277003c31906d902d90b125ae5c9beade62852159b8587d6e14324a68a
Date: Wed, 16 Feb 2022 06:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644994584
