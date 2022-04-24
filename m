Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF60328E3
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 20:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650832558;
	h=To:Subject:From:Message-Id:Date;
	bh=80s4kpa/QjV8H48p8JH2qfakavdgNjq+obCf2JgYB/w=;
	b=gFT0iykHR897USOi0G1cJ10LAUNxlB5d38Sf1b+hpF3mjx/KsZGmdjCxSJZG0hd0
	gDHMW9b4ZNdvqU+hy5bCNWhO4jkGNhl+HDJt7GzyQSh18/7twJApgos3h3+epntjBOJ
	XO5eSBP0yjpFngTaOAuMp7G/f/T2hRPEpScRLEhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650832558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=80s4kpa/QjV8H48p8JH2qfakavdgNjq+obCf2JgYB/w=;
	b=MyMJ2rUJgpWZQZqpYieg6dHUXoIG5FLPioWqpokB+Qdo3JRNbAh3jJG42efAbQ+G
	IgMe3IHWtGTfUET0N494AL50NOM1/c9zvaC9pHD3yFtErNl9qYwHOt5EFX4Rttrzd1N
	Wj8MPplUHcJ9cAO+5+biDA1gVYhxTJYltzIzbp+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d49c8c0-a2268c1f-b539-4cdf-b6ce-8c8f4e924bda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c65a4a52ed2df33364cd2bd996ae23870f536248861bd59a6e8dfc39eb52608
Date: Sun, 24 Apr 2022 20:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650832558
