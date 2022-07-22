Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B9B15C9
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658523412;
	h=To:Subject:From:Message-Id:Date;
	bh=mtDoRVql3rzctTy4dF89tdlbRPIgXUf1svNpDRQ6Vzo=;
	b=ajIZYvtcw2wAZtFvpokBWvGNjsJA3QDyZj2oPdSM/S2FTo/fuO65Sptsqh4kCZkF
	kImnJjWwtivr+UD1uKmIO+TFo7PsZJTlgwgL/PhYlfytK+Tz3Q/o3Q4q75QsLC9sJ/D
	PvkSDyhPFJoqXK/UXeMHjCS29mmzJnfzTJOrXJAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658523412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mtDoRVql3rzctTy4dF89tdlbRPIgXUf1svNpDRQ6Vzo=;
	b=F4qPiBEdD0mJFn6TgKQR3JVmM4uY43mKNUH73ZLv5LVB9uDCSiknNpKL9MUAM5w/
	UbHRhMtxalKdLVMtnIEhMBtnP6zLrthPIss0z/2Jet1Ig2dYMWm8SAjLNBg3A0p3ubC
	PhNabllzUZB3rj3RYkvBRIJAzZ9sMeVbUcXINbg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018227b2e727-397fd6ae-5d03-44ce-ae04-090060efae8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d73e20a0ea31224fbe5e57c27c2946b1b8138984d7cfc8c304122353da405d62
Date: Fri, 22 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658523412
