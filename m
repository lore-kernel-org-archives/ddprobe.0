Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884F64683
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658180812;
	h=To:Subject:From:Message-Id:Date;
	bh=3l7FrR4U1MDO1i4cBPqoFeimji4WKb/uwXt6W6AhmWQ=;
	b=eU2bT7VG/RXsqJgHNUJe5EDs9nBBcHRa5pWGuDZi3p8UgCpyyJ2IK2KykiUW0nIu
	Ync1fQfni4pyariDcYp/zG2+PmaMsEaR+DC9Ka3QCxqvXyhZqhFbAnhH0cbQhKStGEj
	euqdPWBuSiuuSCtuaKRCvT/0IonqtkAGNtPW/iYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658180812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3l7FrR4U1MDO1i4cBPqoFeimji4WKb/uwXt6W6AhmWQ=;
	b=gKPxQtEkhgj6BwTRAAzOReY1Wms4x/7z67tXLnb4TiCwAhB3AjDncKlO8LGZK8/F
	4O8fxiVTtubHISxFdYKipcSR6gC3IvH3Fw5fIULiUXljhH46xtdaMBt8UJHIwsiTUoj
	ntYt3iSVs/2jMW27H10BefruFlzaSPk3eepxosXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213473e26-10bc7bfe-10ed-4bca-8cd3-009599a7ce61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 251ef0ac09ea2df0a0b3acb4f15de7f531d2f85b7f84876868e1b7bf955109ba
Date: Mon, 18 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658180812
