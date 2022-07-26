Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998A3538E
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658856653;
	h=To:Subject:From:Message-Id:Date;
	bh=bjEAYPwXrfVZhUYnu7cfdWsjnTMakVJdGWZRG3nKjaA=;
	b=ez/XrxfYtPMhBV7koGWp4LVPHqVr8RCA1yAty/JyuYOw8LTRiGzvCpQ9LG4TSJMq
	uFGovdIZnRTMZJohzG4YGBL391itksYa4nIHKJ3YEK+mwfO+Pm04DVEV8dbD8cGgXZi
	HMCXPGAOFKisYyXewkPOJIem4nrJmU/2bF86aVlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658856653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bjEAYPwXrfVZhUYnu7cfdWsjnTMakVJdGWZRG3nKjaA=;
	b=j/52T0J7I3Qn0WPYKatew6XDBvQWn9MmryRRpJameoY+TQWKUiPq4E6u9RNrFwEU
	sVfLgi6pvjQN5RC6O+dfvqSVuB3Wp6Fw5XBDKuXuAuCBAU0rsOHyiiz+EiJ+LttPhSY
	cO/YEQl7naOzLokIAr3kye/0pf/lD9x8yP4vohQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b8fbf78-dca49c5d-df12-4584-a15e-df6d647b6bbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0106b355d7ff518ebeb1531972d7bf54fcc79e31e643ada58dca5a08c6926adf
Date: Tue, 26 Jul 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658856652
