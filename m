Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD1328E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645302085;
	h=To:Subject:From:Message-Id:Date;
	bh=d9+lHt9LBbo4adEDPYgNaLhBF6P1VmZORnOL2GI3mxY=;
	b=abdRL+VJEM5Hi1hadKbuAX4vzN+qAOACv2XDFHWStfAW99xBra2/detplXwgLqQU
	e2qjhn0tC9MKLosuiQ0Wn75aQSIRKqP9jGKssY/DDmwmYXUfLPkNwsBRikR2MlJCSZ2
	BO8S7f1kmdL0fa4twPA57U2JQAlITYcuqoc+/oSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645302085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d9+lHt9LBbo4adEDPYgNaLhBF6P1VmZORnOL2GI3mxY=;
	b=SlMHTbUAKPgToD07W0UWPYw3urDY/fH3OOUoj21SVQ0yrirdwEybFTX83lkgwHR/
	pkowDjFlg4i0i1AmJk2jaUmX/2vK25v/VV8DfZgEDuBASx0fQSqRfFvLTIn/CRsxb40
	u2/luRafRuBmNLgwQN6t3XpFAMcmh92gbFty1U9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13a574aa-ed3e5fdb-871d-4cfe-8f91-2ef0360108a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f65c7b43650a6be70306081d0dfbc86e8226cf358159942aa60b5248b53d729
Date: Sat, 19 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645302084
