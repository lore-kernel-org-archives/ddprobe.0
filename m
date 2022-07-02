Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536AD29B0
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656764212;
	h=To:Subject:From:Message-Id:Date;
	bh=pESPNi/gPRu40EdVSplr/7LyY4dx+AtEGMlBTBwo1Kk=;
	b=TRu01JCkTK1Xg5quhDRn93iKSLMOfYkh8KAkr5Bp35/NalEL09E+FD7W79NfuMWr
	DclGoUk6KC+F2tiKwPdtxYpjEqqfxXtt03Ze7xwkv+66hGfj6qOKz0g3HS6NQ4dxVfS
	QZs1UMIO+DUknmQxBTxVJwos+5nQo2Ud8zrZS8hg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656764212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pESPNi/gPRu40EdVSplr/7LyY4dx+AtEGMlBTBwo1Kk=;
	b=N9+qCVsB+EpLK0RWTlBL5P790PWfgKlvKp2poTkio0jPtJrJvT8sywBEjCvLq0f9
	SBkIx7+czxjAX7Ws9k+LGNugk9AJzwlWzYDrikC3WOmU4YPv0UQKejtFt2jWR7/zu2E
	sUgmrf8dtmk4FV17kcbnV6omO22m1jhmIuGQaiz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bed7a42d-ba43cf63-0e7e-4923-98db-92f75ae222cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2d5367f129686bdc8159f13b0cc4c0b18e452e25695580ad8790f4345ac1fa6
Date: Sat, 2 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656764212
