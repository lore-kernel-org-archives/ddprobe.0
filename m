Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A19A7A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 20:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652475059;
	h=To:Subject:From:Message-Id:Date;
	bh=/SYBeUxhD0g80+MTU2Pjv8HLJgraPTRJI4yzP1R9ceE=;
	b=lCzNufBg659oHPwKe1hsQAVa+icPrWt6rBPHlDVb/8Zn3iHepPgn8aHFohfI8A5H
	Meffl2CbnkKqAO8Ojs1qrlLB1HojDjeAY8yVZR8t+gBlq6rUoe1HJdCABL7GC7eM1Bq
	SQ5YgKXtyYapVVpzocXVdM2JntO3KvDDSaj1o0S0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652475059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/SYBeUxhD0g80+MTU2Pjv8HLJgraPTRJI4yzP1R9ceE=;
	b=AUJOZHK765r1WW6S97pgJhbRpq8fwVel8JyEqhDvPNsBTKW/iUiG29S+sRTqxtyO
	XW9f46dHDfwaleaeKBIh318gAUNC8YRZwm/LtnVzmQoxHqQHaaeC0/J0ntQFnlkyJ4h
	7/ev6jBtdGx+3nOHhS6/qLnl7yT5eX2kTC6rwnk8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bf305c16-516a4c01-9973-46db-99b4-882eeacd89a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c47e4ddaf39677e85dc58813b7136e41c8732893ff2e046bc2e7cf89291054b
Date: Fri, 13 May 2022 20:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652475059
