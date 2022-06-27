Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0571D4C89
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656368812;
	h=To:Subject:From:Message-Id:Date;
	bh=9jRgy3g1ukHv3SFreKhIkLpbgovU1dTPxhvZnP+Cx7E=;
	b=EXSTF7+CL6lCgm/zZoWywRjd5Pd/ySfppNfZcXMf8YWO90s7Qoarcvsj8FmCngyA
	gSQWBdlAMEH4h6Os/qxe08auGjT8cOXbD4h+ZyPhoNK2mUtMfSTW9wNNI+1RB5OByMf
	/jT27rdaG24u4mFYdPyjvcMT1wZIKeHU9XVk2ZXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656368812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9jRgy3g1ukHv3SFreKhIkLpbgovU1dTPxhvZnP+Cx7E=;
	b=ShR/sGwBRNU3i9rMTkVm1pxBzOwUMi17PdSlcT+jE3q91NWY5jUL57J4yb3TSYPY
	F/yvL+5hMJZQOepUq5VFtZA0Ix/vCS0PG76NTMj3zIWha9qJIaeijJTXecl23QsK7q7
	0QBohV/4Fp5wEeMqcOZquQgdyXlHjK0RhgBnKUlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a746510e-dbc1ff54-cce2-40c6-8846-040b66120b56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b9eec2cb89ccfd18dbfe3425bfb6020070a6e80ef4138b9fc87254a54869760
Date: Mon, 27 Jun 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656368812
