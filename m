Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E68E3C22
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656771412;
	h=To:Subject:From:Message-Id:Date;
	bh=dYRCgC6FfsDiMEnGDT7Gx+PeApATDx3LnOVIpXJGEYY=;
	b=i0EPMDoE2qwUUbXGNUnDoy7o7DGtA5nfWj8HXoUrBpqXR3QegVhedgH3yrW0YhXa
	1/d5y64sJ58tES1l5IUBqFJGX3EDvSOSVSpJRiieVFbEra3368Kix7sHi7RTGod49Um
	KHPbsI/bjpEG5ZXJTT6R5M/FEHJL4JLFqsVwmH/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656771412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dYRCgC6FfsDiMEnGDT7Gx+PeApATDx3LnOVIpXJGEYY=;
	b=eQ2HoQDEXqo+pX/E3rgP5H7FjFABLWcSQRV+f0x6mcC2GEX59IbqqOzFwTTzXxT2
	WJ+zrcUiK9gbEL0R15yxN7+l+b5daOkr4EJseolDgBHnVNQZ1eQONZdRrqeHranYTaK
	rC6X7mK+KIFZU8TXVeiHhxO9Uk3/KiY7J6mzEo8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf458168-80fb2de6-b231-49ae-8072-777f50a4dd5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 615692f745999041cfb09f371b593c7ba9170fc71ef70123917b15e5f760e54c
Date: Sat, 2 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656771412
