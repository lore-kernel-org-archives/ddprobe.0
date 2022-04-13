Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40B43205
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 23:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649893078;
	h=To:Subject:From:Message-Id:Date;
	bh=ctSti2p/lYKMUqCH5wrMPNLSVLxhQyABir0g6Ok+qNM=;
	b=cVM2HVhDosoOkIGmWRrYxI707AgNEsYQ7aBV+wImY6qgYV6xrsMpI1yU28qd/9Cm
	dNPy0NsICE0Sv0z3brOKcSpHKkz1k4kEOKglz2CccFot03u9X1NlnnBRQrjTcr4DrHD
	SGaMwRXTjft1iMgayRRJsFeEdVKhd//ikhqOViRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649893078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ctSti2p/lYKMUqCH5wrMPNLSVLxhQyABir0g6Ok+qNM=;
	b=EhuS+MSf7NobmVcDupAdouaNe0XS7oKOrkSue3860hdHBULWZq8biCKAZYk+OY2g
	8hWrSw2+A+yRzGv4GQpDQRqftREakJHmnhQjlGAeEX35YLOrViCuGA2VAbzCBFHsBZE
	kdjAQTpflMuSw1woulJTQ77oOTu3kqb0DOQVqbKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180254a74f3-3e15342a-5ba7-4048-a88e-749349b5fec2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd657411c81c344f66811fbb2aeaa5665a9f753b86472957c812082e0faede25
Date: Wed, 13 Apr 2022 23:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649893078
