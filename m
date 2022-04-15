Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2676F7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 21:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650057598;
	h=To:Subject:From:Message-Id:Date;
	bh=aVFdUj7s/83WoUC+CbOv4tMsDWjLxeiYaF7XKtv2FLg=;
	b=iaem2vT3zZZJqt6M/DN+bHKccFw9HdUlNB6hXHPWPkuvaCrq3kVHyRjnnImOJLRG
	82dg7zfw0q95XHXICmH5QvGOeiJAGGULBqAoQR3JBed6Eic8flNFN5M9Muo3hSqcylA
	tzd8NR4NWwPCWthEDzh+7/iEsvSbN5QwAzG0bHUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650057598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aVFdUj7s/83WoUC+CbOv4tMsDWjLxeiYaF7XKtv2FLg=;
	b=iVBsnVRDsJsTa7LfUg0UenH9YSkped8Vpzw2/T1sZ5uT3s1nh1jGE/3xQM62cWLn
	TF0ofhPeQGq3mwQZF2EcIC/+CUQwD5D0mdME483UL2kPSz7G2bWl0zvasBmJNrE6Tg5
	RmWkjxDO1uTbPgVJaHpxO7TOXkc0mFel4KmZx8m0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802f18d562-059c5bf0-d7b2-4d72-90b0-224b0156c1d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea820bd38e5ce2abaf076150d0afe36cb5c75e97135af5d8a600e5405677e13c
Date: Fri, 15 Apr 2022 21:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650057598
