Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331C07C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 09:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648458718;
	h=To:Subject:From:Message-Id:Date;
	bh=sajBJYPJ+pUUDjJTrUxSNK2RoeckYip1VhSivXi7Gls=;
	b=GgJdFT/BdTNtW5qn7bZVBO7r5pC0yiKBOjGHKhQNLGIK28r/yl55xwSR+cBzM0DW
	UZttsy9EaRxB7wUs6sRAHBzme3cqLRGah4kbagerOSfYTpU2CvuIGXZ/20ZHATNEVzF
	d9gpb/DlFR4vRr1tsKkmJavcOlFXSH/DKEunmeLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648458718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sajBJYPJ+pUUDjJTrUxSNK2RoeckYip1VhSivXi7Gls=;
	b=IjSoH2tsu684pwjI/avZkpIeN9ozKuS30cGvQTvqw3Dpaan1w35QYkcz6BIdm7NA
	DVXLQ1t6hYDsjU/Ns05DOQj1J+ad70JOHEbNhKXOfqrAkU02QPn+fxp7wMmE3kEGoGE
	G0GmEXvLPdamteZhiecDs8ie4r0kTV0rRw2ToPaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcfcbdc59-ab203521-4bb0-49c3-879f-ad431ff847ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a705a0e9923984c4cb345758f26f1d8b05413bfe08f1d59c2ad0783427b621a5
Date: Mon, 28 Mar 2022 09:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648458718
