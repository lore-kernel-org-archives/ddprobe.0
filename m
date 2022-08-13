Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59A7622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660355453;
	h=To:Subject:From:Message-Id:Date;
	bh=1Azw3wCvolJmCtp68Uo026e7lFHi/FXzGNpAlcLgtEU=;
	b=BqNQpGzLvtqhbXENp6QqORF9jkz835jEu6v/Td1hjQ8ycuibtE9VWRa8MFmY6exb
	Vnm3B8T43gZyDAPO1p4ccE9C19U7quZDxhdGUC19CEMx3c9qFuN1JtVPsDOGRwMiUhj
	JlE6J+n/jzws7NJzTuWCgyjzduibnVw0yqvpxQvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660355453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Azw3wCvolJmCtp68Uo026e7lFHi/FXzGNpAlcLgtEU=;
	b=evizNDb3gms19FZls9bzU8u5P62MiQAJW3RbkAC/stmtRT1pURny9kqBFWtQyC6C
	xM5N1mj8Q3ZgRPFHVKWyIKr6NLtqwVRuU7cx7K3i/TKO1X/j4y+ST3+XAwZc1gwj1yQ
	wsYBkymyPyOIGRxpTdutGyfe3ZK4+ooDKakWbpjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294e59e88-797f1f00-21cf-4e82-87fc-61fad20dbc49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74852197fbeb1687f79449af98dd090629c4a5466f61a5545f36fdf0f470a2eb
Date: Sat, 13 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660355452
