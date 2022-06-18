Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27E27B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 21:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655586479;
	h=To:Subject:From:Message-Id:Date;
	bh=N7GWEEWjdZIlCRWruxAnoS8wu6F/bkAKHL41nTE+bhk=;
	b=atqEDBgVB62lKtnQxdedDimNZeqBiT79pejKINT92moxoiIlnvB4nTIAODLgYjVz
	wJVgyyPAwKT7/4637wcl82zRxfV2LI5a2xSZqCqSFUGJZMKwvW/IGKUOSLx9QJiZqwz
	P8x516+yx2sZhlNr2yevnoO2HW8tEKWLkJ1S6seI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655586479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N7GWEEWjdZIlCRWruxAnoS8wu6F/bkAKHL41nTE+bhk=;
	b=QJ9vPQmU/S0774UsQexROdPnYOg7JZDtC8aU2Ic/dgKD25SrX7QWIkTRVunKf5sg
	gKL+qWYo/hajeOTVC0CGE5waa8mCNj+tnR7QBkiM+MIXLGDyglaa5WDtkI/2m8E7fFl
	RXIAEtCXelWB23EpSZT+wNkf7cM+LFZr6J2dYXBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178a4dc82-9df44f3d-a621-4b39-82ca-c9537ee58a5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97f5227814dd713653434b04c921a24900e79ed25e8ded2384d7e38fd74913eb
Date: Sat, 18 Jun 2022 21:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655586479
