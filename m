Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE07746BF
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 21:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658699212;
	h=To:Subject:From:Message-Id:Date;
	bh=V4drNpmme7lpYafayH2xPXAz0Kxa5vMfMLJY2cPQoq0=;
	b=eljdmX9iLdWURdvConP2dIabfoW0lvUf7pAivqHosaCCgrfH2fuLw3f11MRVrLvn
	2vsuXnuFWz/q0PyWDjgCWqryiGHkZ9nJUHqd0w4RhQYXhnYybHvBErCW8wyZjQM6Ny7
	jMVtBp0+c0wck0qoVBMDfvor99W3hd+TbJY4coWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658699212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V4drNpmme7lpYafayH2xPXAz0Kxa5vMfMLJY2cPQoq0=;
	b=bUG+FEM+RLaJABu+jrjDoQBu0dLBFSvljj1y6vGT/PRDME1/slU4A2PCByobOdBO
	tyiiUXTFfNFpVNpE/6SkDZSMUc1WyOAWKDV4FgQX98cVN1ra1swzBf8fzhGJZT3QrMe
	u9flwsN6AMXe63TchJS2v6c3V6zHuu9N8TV2uTF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182322d660a-4cc267ae-9735-4344-a5bc-acac3ea2555c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 428678b4ccb8c3f68ba88559a81ac436b41fd939c2e4a9d6c69aefefd7496ee0
Date: Sun, 24 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658699212
