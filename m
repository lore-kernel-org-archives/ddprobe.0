Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97DCCC6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645623384;
	h=To:Subject:From:Message-Id:Date;
	bh=y1/uNgjW21BmsFoSHzz89uBnW2b6wNspZkfstvoBzpE=;
	b=Btx2bstf4SAovv+ygcftDQ+iVJ76xyY0/mSI1KPAG1Tvn9RTUbpu2q8HPpi4+Aa1
	i3DyKk6pzbs+h8qD8FyzInb5XVtPy2AcMlkpdqPtXcU+SQ95DVvfiL9KXZrlWIZCwfB
	xAMk7zuls1PRrJAZSGnsravY1RxcsQvpkanke8Yc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645623384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y1/uNgjW21BmsFoSHzz89uBnW2b6wNspZkfstvoBzpE=;
	b=DpTYOiE8dxi4DnQ1IXzL823nogXWiIjVz0RstuRRD9dbBY2yD63ZyqqIe+uIUnee
	ZTMTIz1nnxf0fBG2v9AgBKJCrjuqtfUTkNipqRGnjWu7I8zz6kigwCVQU2oxmpNHuGh
	E+pLadSoIlc1cCNvRoxdokGAb0YGXO6GrHxK2opA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26cc1ab1-29dcb57d-137b-4ebe-b83b-86e49ab95378-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3be6ee25ad2b080368c744576b190396e3767d5ada26d10143445eab73e9665
Date: Wed, 23 Feb 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645623384
