Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD987462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656617212;
	h=To:Subject:From:Message-Id:Date;
	bh=fk2s+ikvpL2NFZaN1n41fEEZU9UHCEj7C5axONNKCrk=;
	b=SF5C9P7WAQmVHD4ZQAVCW178dMyvSl3nYUB6mKpn8Con/H0G5ovi1YVrQaQElAM1
	2C4AEbnme86exMnezgKrFPS09b5WuLZXOnNZ3qxA+QttjN3hO+ynKxwG4gg0ykb6zNj
	n12FdjQDRCuk1NPp0V+/qixCm/QNo0Qy3PaQUQEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656617212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fk2s+ikvpL2NFZaN1n41fEEZU9UHCEj7C5axONNKCrk=;
	b=BMJqSuxRftSGPLAHyc36zAUkiCXC8yI+U24G/S6jBaCDJ7mYCA25fkAjdh56Qr6L
	Bgz0BRnvljmbIY5d4C2XFcc/bId33S6hiSJGgct/9SADa8oVuMx1HJsH85UOa5/g0+o
	HP+cMyfbQooxlCe0Al66OtkB3EOMKrO1S64rkOQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b61499a1-a4cf30ea-4cd5-41e5-bcfa-b56680beec10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 266636879ed55598f31370a462382eeaa7bf4e362c389dcdefdbc8cb3dbca862
Date: Thu, 30 Jun 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656617212
