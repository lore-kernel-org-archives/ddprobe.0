Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DECD23A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656052012;
	h=To:Subject:From:Message-Id:Date;
	bh=umKnIPi7Cn/u5NYfJEJUMrScE0c5ETmmNC8fwJcZFi0=;
	b=exhILJp6m2lzVWuKgsOFsSDA1/MoQZdoWpPtKCLNwMmawkncLzJSDbYMNrEQROXn
	IA8p1EgCuoRP2DV/MRuePV5PUnLrlIqewUAKGte70X5lGI0+9rM6P5W22/JYx5RDQhf
	Ipza7q8x4BAepUrGCDexw1Vg9HESF/wx3Uw7PGMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656052012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=umKnIPi7Cn/u5NYfJEJUMrScE0c5ETmmNC8fwJcZFi0=;
	b=bpcap9B4re/XTpi69Yc2rYSvrMYmp9UrVrZQH2f0zOxmcWZt5cW6D1gdkqhGguGZ
	EvWAudIhrBMhRvv1M2bjhEy5a5scN229yGsla+qBUcp/IuCncazoVBkryZnoKppSKMh
	UT379MGfQ0CihT7euqzfnM2GlKfrlsR9rh1luiRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819464551d-7208eb82-b995-4820-bf0a-cef3e0f35968-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11e7c2d84f7f6554d28c7ce7efa6646c02b45da30b843259d092e0537fdac71d
Date: Fri, 24 Jun 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656052012
