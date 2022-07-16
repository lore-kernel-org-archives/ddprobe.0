Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9727A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658011012;
	h=To:Subject:From:Message-Id:Date;
	bh=OMT9ily5PsBHhzAg4BIrm03if+9pk/XypLvH6zyJ2VU=;
	b=SFfdZF9w3/5Ixtb5tTJi+pSFzeDL5ZKvgkJXT93nukTUp2sPPQLEJwnP/c9bZcFl
	T1xtFkXm4eJyyCB5jY//4ZKwBMNCeyZfN56PBaypEIDLbXy7r0ApggnlkGFEoNdpyp+
	aZ9qvKmB2DH/40Yd0OT85m0P2KCaSLSFpTOkFmE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658011012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OMT9ily5PsBHhzAg4BIrm03if+9pk/XypLvH6zyJ2VU=;
	b=cxwypxF0byn2su7kHaCdzhrWVvPVgyyLkcpEl564MiyAo2yjt8KqmIlBPkIPHLo6
	0jgOfgv2bXp9zN8T+gs/jOh1sSJy3rSOON7vmyh+sJXhaXx9ysCxvgnlXIAMO17R+zb
	ynivX+3aNmnj9/E90+O4s30ra2zHeyfYDrSRQn30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209284c9f-60f70d2a-110c-4794-80c4-15e5a127a6e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83957033f51f651b3b665a3cfd3225be2de28b5e06215dd24f529830f0f30201
Date: Sat, 16 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658011012
