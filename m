Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA5D7A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657694213;
	h=To:Subject:From:Message-Id:Date;
	bh=tbxk10+IcEfBOlnekEOBoHMfVxklE2PEwdyEDwidxYM=;
	b=gtQvfFswyIZS2PkpHGnKa2Ne6F4sZlEzuRluE/N2Rfa7sPfCjCeolNiCloDlr7GB
	oHKIJmygDNJBQXhF/zmJ4aMyNSIovMpdIG1lYNSMqo3+O5yc8Cl0fo91SR5BS7SqUTa
	dkppM/LzuQMmoIK1OxiKtyueRXM3l7/TQzcWoHWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657694213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tbxk10+IcEfBOlnekEOBoHMfVxklE2PEwdyEDwidxYM=;
	b=BPTP3GY5XVSP1vawQLM9B0bkBX562H67P6wsoGQ81F880kOPT099M3Zw+g1pvdKL
	oVKrakjYdBh82pOy0+TvqimjMZfYQEphAoXph1SnT7oohN6pPFk9EI7n7kdLbog/Hzk
	xBx0q9SRwfNxgbdu2hN0+3o2PKF40t921TQhvfq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f64650b8-9907ed69-2bc3-4092-8824-9eb432d8552e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17588eaf74312e0fff14e2baea5313c13a96c0c9d6aea9feb8f6a7b55b0df2ab
Date: Wed, 13 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657694212
