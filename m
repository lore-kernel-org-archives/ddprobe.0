Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670BB7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659435052;
	h=To:Subject:From:Message-Id:Date;
	bh=9/K6LNJJCnLzpED7RB1R6I3xuMIkSUwsr2IUB/i6Vf0=;
	b=GeIYY69zY4U2dumU2+fSXEqpUIREPRMw367t6bAy35TZNdFvnQ2i7Qbp05VJksKA
	jqilFGH5oWStOjJKUHghM4EF4u8/eK/O9LIIyK5li5S/490ILsah10iQhAGEG25Z4Fj
	fESZ/W0bGZITCv+aXCDoqu/boJHo6hs7h1zFkem4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659435052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9/K6LNJJCnLzpED7RB1R6I3xuMIkSUwsr2IUB/i6Vf0=;
	b=KbGxpw2LlTPPx4/+X8XMAU+C6tgegUQp6U4BfqzKExMOxkrfdb/n6QkPCGHoQD1N
	vu4IonnVI6eSDOnYOvkz5hAt3PEatU/lH4m8Gw1/DnNuzj4LoQrp+wPyukHFigd/XuO
	MTxgYo91rikULM1TRhZthtGCzpfj4sMgTkhl9Fkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e096e28-0b5d3b5e-81e8-4fa7-9362-9f3fb3c1f653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d21d1f3f19fccd515025eee2dee5577769d23d63906e070a79bca2edd7e2dfb6
Date: Tue, 2 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659435052
