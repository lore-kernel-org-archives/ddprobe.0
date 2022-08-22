Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918F8320F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661196653;
	h=To:Subject:From:Message-Id:Date;
	bh=Z5/jDLsRzWCivEaHKGKoj5wc9YunocX0zFouDagaXws=;
	b=F2c798J5KRGJq0N6jPrU4y09uJ3/dpyP9VuWrjsJus9ch1Lnb4WBG/92vujM7Q8c
	nJkF3H1qb5JcN+XF4mCPbN+mHEVQ645ADv5u1awzK7MH1LCjqc9qgI1s2dG9LyTJoGY
	vxnXiNBNE68zhF716+Rf7uZoyTYuuK3H/6nqjyDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661196653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z5/jDLsRzWCivEaHKGKoj5wc9YunocX0zFouDagaXws=;
	b=W7Sw1bZYgI14OruTzpcS6KDTt7tW6eitJ777EieG0F+y7t8owP175hgAtg7h0nIE
	8Xq+O+eY0pE4N70IBFkq19wYhJ8BOXuLL2Pw3er80TiTHHeJnlxVoHdvbiHbXL71LRE
	aenlVMTCj9BUivU7A+Y98V3qPOjUsqNx0NQJuOJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c709502e-822d1437-4d6f-482a-9c8d-4f8dbad0c111-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d8dae30781e7005ec830342f093de337d09bcfd4883bf2af0217e5b565488ad
Date: Mon, 22 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661196652
