Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2597B1FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656843412;
	h=To:Subject:From:Message-Id:Date;
	bh=kCe4rMuHGCR+4n/PAA5zYyad2NZbz5AuTGB2BialxW0=;
	b=flqt9WSCTNYH2+l6MlVWKk0HvxKfrKHgXandg82rIHNKHlX03aqO16NKv1Smscm+
	LTsxoQAVdWT1iEiDrej7bRPSTlgDqRfLXfL/qw5PDcNPA5Dt0dXahBYthsa+gelPklr
	Kj8tIpoF1tg25CG4Gr4lB2VLuZzyB0CQVy+T1ZA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656843412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kCe4rMuHGCR+4n/PAA5zYyad2NZbz5AuTGB2BialxW0=;
	b=DffCrHHeAHYfl8uahAkLtitxMchu+wHnWECwOKPjcxuyYmlBtUs0JXjQAAY+Z6sI
	poNE7b2h/dEuBaVTgfdjA8lWRymr+Y54qz64IX0fA+bmMaeq0Zd7UO13D/6jTNhj2HX
	4lC38nDxRfQ2VYEWURIhfxJdWV9Zwe3Oi7gw3QG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3902351-5d88f941-c7c3-4dca-9795-03d83ffc90b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2c66868fd4e66c250cfc7a1adc29358246322dbcf42bdd7769970d625dfdb7c
Date: Sun, 3 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656843412
