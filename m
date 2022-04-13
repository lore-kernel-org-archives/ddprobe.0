Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AE828E0
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 08:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649840338;
	h=To:Subject:From:Message-Id:Date;
	bh=eAipicPC4aDnD8L8vlHC6sgpAoN3FhX4YwD/PHCgA2A=;
	b=BkBnoR038V+efL1PJJjZqxemO+Ckll3F0pZpOkTOCK/dTf8m3K9ZgewTCQrjHcxD
	lsaHGMnUwqyEK/iXjCJfhnmNo1OIBAUMlz90D+EkhMAW2JU9655IoNtF/2Dq1hpv2iN
	vbz6Ou6SRmPJAro6qDqvTxC//sMHo4GsA0NRoqUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649840338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eAipicPC4aDnD8L8vlHC6sgpAoN3FhX4YwD/PHCgA2A=;
	b=BMUYuX+K5IsmMo3cy2p5StgAMU1Hw4xgYlLV8csbCiLcTdFzHiSEIeKXBtfWpoaP
	P//I3AJDbAJw6VZaD28Q7hB6HqJAex7rdlFzYS4r/e1AKAIlUgVGjWaELA6MREMkeIE
	Dby6c2wO++/uQ1N5h1G7G3gCZc5GZTGtHLEEc2d4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802225b56a-77ce3a74-7795-472b-bdf7-0faf4e303af5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 962865500518f63ff2c5318df41e0b9f48065a5738889e5acbffb85e25447b34
Date: Wed, 13 Apr 2022 08:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649840338
