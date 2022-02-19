Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11275124
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645257985;
	h=To:Subject:From:Message-Id:Date;
	bh=C2Zgg0l5QmaKOhUyYUV/jKs4rxa5GSv7w9CHWwhkDjk=;
	b=GmoFZwPUGiSBaUhUL53Xm2B145njnO3zGIL5XlOQJUZfOI6EvAtiZsCSQpq3hOfO
	aAS588FutedXlCgvh/jiSbH/rFzhZH5iZmO0WT/K0iTX60KG8N5XYPQE6R1t/mNW4pC
	nS8/DfOGAvRd+orJcxOpi+UAyDRBTjyTXlZMM5GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645257985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C2Zgg0l5QmaKOhUyYUV/jKs4rxa5GSv7w9CHWwhkDjk=;
	b=cyvTFWn0tcmdYE/fdgjAxwJ3Z/bCEQLt01x2qcgrBARXh0bBql4Wa3tpVzl8/yI0
	KocXS1QteVfDMtqtmY5iwrwvxp7cZJDeX6qPUazn1lmUCNKyjgKmN8hXvVR6cQUzXY5
	a0tWhhksqqHv7dYECczkosiFhp5NAZFYg+zwo0SA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11048b4b-0620a112-5138-4455-bb8b-15692bff6918-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61419fe1babe3bdd44a05689e754fe27e71e04647f229146df60c0606e486a44
Date: Sat, 19 Feb 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645257984
