Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AD723AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660410652;
	h=To:Subject:From:Message-Id:Date;
	bh=WC+ZQfG1tzb6ZZNu2jZTPVsAP9NUrrX3n4kkL64c0NA=;
	b=Lp/AEeNUqgDxFMTJ6gzs7MHoSEkH1L4BPLXYrah8OOmtweWRx/4IIdjZJE7N2FdL
	BI510ssOarDhUfuARk+xJ+WPPECwhBMGke2k1Kq0NrhIHRyHfVnAmMWDaYTp2iE8vGx
	chL+LprJ/l/6RYdYozmlltwa/NVfYxeZQKGG2Tio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660410652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WC+ZQfG1tzb6ZZNu2jZTPVsAP9NUrrX3n4kkL64c0NA=;
	b=h7D86h1jiT1sF3sKsl1sWRsrqTDBL8RhcQPGwKZZIVps6fb7Ba7xPKZHgfg9yKh+
	zhNSTN4fHSp2rnhR0xxmPM5vSwwEyQ/vX1l+KzJfYyIVI1307IYHfa48IHxcRtuNvxU
	OmwoIqTXrbuXCo8Agxwb0u584raSgH93RM3TwxiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182982fe79e-70ae9b78-bcb8-4145-a3c1-2adee534472a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da818653d7be98d00ef8f436fc3cb5d8f8424bdee8a8f2745439ec593977cb95
Date: Sat, 13 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660410652
