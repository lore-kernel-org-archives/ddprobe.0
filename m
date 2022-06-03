Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB237E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 05:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654232939;
	h=To:Subject:From:Message-Id:Date;
	bh=P1wMjEYUgKwj58a7EsIXWhAK/0qCfgRZhDHdwMW7HiQ=;
	b=J9NWsPfrKyqDtsXG02HPk7DQtKcPArFdGVj+tKwJLTR8HK7A0lHFJwop0wmvEvj7
	llu917PM8arpYXu7ut/blHMmf8NUFVSWfN4hbook4P2i4+dAV5vkqTj1l7Tq3bfgjHd
	PsokqctkBAf4kJ5lWOGK0ao3ySf5MH319Yl03bxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654232939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P1wMjEYUgKwj58a7EsIXWhAK/0qCfgRZhDHdwMW7HiQ=;
	b=E8oT041Er7QniSBQ3Rxlg4ynp2szu1ydC8fbDsytwfo/lBZRNZA55DCALsi3+rcy
	FoG74rtosWja26XHX6nCxjnHHR3cYzx5ebHZPM7YKdD/2hpvvmu6JmpikqYlInPK2dn
	8kdvoZvw5c7XY686NUeXKXlnua+gJNdWCoVniALc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127f77b18-86b2c6f5-85d3-49fc-94c5-93f2533327a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab4822554b950774c35f80740c114c7968fe98b87030daaf424c65f5c6cd85aa
Date: Fri, 3 Jun 2022 05:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654232939
