Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F08D15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659239453;
	h=To:Subject:From:Message-Id:Date;
	bh=Sv7b3vDDwVyLK3cU+MEF0Y1UhNQ8/tB/VqP9JTVdPaA=;
	b=aEXRGoYiAcVH1IU+PsDRcP1f+AugZJ5bkigZ7A5qfGIds2mrzhX8MwRw4Akobr8z
	7HYKRoZP8uogCcBQeDIc/n4l4llSrmFp8Mq/DUMDIB5LKViIO6iFuoWBxg3Ud5FFRkI
	94f/X66/Y8cNGs1/eJC8tdEfmiNemNnJsO2S/GDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659239453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sv7b3vDDwVyLK3cU+MEF0Y1UhNQ8/tB/VqP9JTVdPaA=;
	b=LiIpP8I4coAOFQZn82wIj72SRpzyoFO1IITh8eiZcgxLg9tZQfUEWS7jLkNT/0Rg
	rDJYT4JLYy2asrjDH+0FK/qRmWLy+dYnuHdyN4oWtsQfGrGRbk/k07uvakPpP46oo5a
	Xmm7j4ODnUPU3j1812e17JM0FxeOTRtTih1ZPvZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825260cfff-430de293-27b9-4fda-b383-abe81c6d90e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6ae341bb7139824fe5942c01041dc4a7af28c4e897d1f027476e489f5607cc3
Date: Sun, 31 Jul 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659239452
