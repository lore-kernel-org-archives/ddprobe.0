Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED4A56
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 06:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653461699;
	h=To:Subject:From:Message-Id:Date;
	bh=EIdrfFvVK5dXKaOxBfoiTAqOvtKJ/RpR994wVuvmWJM=;
	b=MVMGM0sVY+zihlWr8CoeXVhUR20kbZWEU3KOvIuiyqfBr0cSbvTOS5Pa2u0QVRxU
	Au8qlMTEV4NrByleKfiP9xwChkn8YNqwo7Ym7I/8VHc16awNVvbqKwpIb2WocWlxAmS
	e0quSOFzIqIWTDEXx8Q25322w70+noNfUI9YacdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653461699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EIdrfFvVK5dXKaOxBfoiTAqOvtKJ/RpR994wVuvmWJM=;
	b=UhPV2fEC0qz+R+8tcr7CNmrtLK5Rg41qPLWWfjCusURlUwAp+LLh164rSkLvAOpR
	1qt0VbQ2vdLRvcqGXgrZsilRvf9uOhBczjmWHNgZxYcezq473bkJMmJdhEIt9pD9aJ1
	o1DOUyvqNfyCsDC7kbg/CMpQiwzW+lfbqX5MlC8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f9ff4b19-1d338ca7-c1d2-443f-8a5e-dabdfdd474b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7fb8834a5a55b2e411bd3b3d7ce1ba0dbb04d1b202ab26fa5bba1cef3018201
Date: Wed, 25 May 2022 06:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653461699
