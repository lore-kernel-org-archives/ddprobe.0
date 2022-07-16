Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB9C36D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657943212;
	h=To:Subject:From:Message-Id:Date;
	bh=rmWXzm8xcAnYM+0FwPgB57fAjyWeai6am5adcvk/A34=;
	b=A0Py2HZOuj1gBy7QfeQhptPcjSDqAUcCMqy27PLBF5LLzii61alvbeSC9k4xtgAF
	N4+c2CnxkXwLsw/WyQOZ+7oz+5vytwYUn/IzVpzIrnOWwUVWQC+wa1wp3GcdmhRNid2
	g6yFrVhkrBqmx4R4wlUaA/lpA5MVbJy+eu6IkyBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657943212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rmWXzm8xcAnYM+0FwPgB57fAjyWeai6am5adcvk/A34=;
	b=LGzngjxf1gkeDFGKNOnuD8pqN3ZdAHNftNjddbi8Is1T/W9vJzBqkcnbkeSG2ATB
	1wosIdvtrnOLOFOtaEAoCYSQYJA2nnYxE317qBlgIaXrCrA01dZia39mr9SXLjIoUB7
	kGskQ1hR71KnyzKuaYKR8HqgEBANRn8LMPSUbMvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182051dc112-b5581f90-c9a9-4855-b797-d3f42884f7bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3df2d29441206d0b102009d73adf5162d53845338bd84acb0969bb9a6cabb767
Date: Sat, 16 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657943212
