Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F00223B5
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656928612;
	h=To:Subject:From:Message-Id:Date;
	bh=AFaA2/0Mf+zGDAWWOkZbvDJTc3E/9bCyuOr/k/JXY/8=;
	b=WzB2Vm8wCMDkkLemyfquK6aEJfsT2HDbIjQ2NVL7jgdTh70nOKyyEGxllU+PG74T
	aDCYgMnzRV0XwJIOAhdX74djDV3v2jUWhtiR4p1CHwbydKYWpaaZRSV1EJ4PlsxnTNj
	mRdpzlEohRNktJRQUrvC6gPdzVCuH+fnNCzheEZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656928612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AFaA2/0Mf+zGDAWWOkZbvDJTc3E/9bCyuOr/k/JXY/8=;
	b=eBIGxJ0q+EF3UbUxD4wqyelKtzNcsBbjcc4GohoR5nU2B3yuXnGw0ldwsmVdeL0B
	oRATvUsUCb3MBlePi801TEXO755So34JrIMenPoplQCRG48FiAtZ5zbI4AMZEHNP0xg
	8rOiF8SmvAJdFoxsUbcsdf6l9sxA5oasGBIKDqTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8a42ff4-36880666-5d1e-4cea-9518-a5cd5b21ebc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 120dbd15816b26072c153224f07c0d7e6a972c257853dccf661d341cc003ebe7
Date: Mon, 4 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656928612
