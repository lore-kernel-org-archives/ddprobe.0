Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D477A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656116212;
	h=To:Subject:From:Message-Id:Date;
	bh=SxwIhrHx1h2EIBhMPduwYfa2vj6Jb3G/fUGfsCzPRp4=;
	b=JRuiKIvFKgvyGNEBcG41WXy5MLlgu4W7ugKPbuBj0oXWfgT3aD2hqh092yEiO8Km
	2QslsqWhIX2mAQDGdtWP9l7039/it2b7HJ1xB6j6ylvFzPAYVEPfTBslcsodzaiTgxO
	qh4ZUhS+DAMeufBwrcl9ZXX0IDdTWrQHYv7jf7wE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656116212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SxwIhrHx1h2EIBhMPduwYfa2vj6Jb3G/fUGfsCzPRp4=;
	b=hn2Z990PE1PJ7TO7Xbv/HTrOX/XVPPlVbPT+rsXyUEQTa/lZAkf+V5Lkf2Us2tTY
	xvZ2hFLDRrJhyNmkKxE8foICg8v/lXXt15EJ2Mg0B//YJrDdJSTDvegwmGLimvpbGwU
	Pf5iwu1UMjq/LXe9Sc8hZLvwYr5n+0T/QX6AGlWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819837f237-40c62909-2320-49ce-9dc3-85a64ae95e14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2f88495343ebd0e5b7b945b37585d9d1a33f69543d84d1af7813e014be22016
Date: Sat, 25 Jun 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656116212
