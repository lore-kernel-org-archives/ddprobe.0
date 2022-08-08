Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F4D3D6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659975652;
	h=To:Subject:From:Message-Id:Date;
	bh=/7ioCRhYVu0Q4S0NxMyCTCDTEFTVM70nSFEjrdTklWg=;
	b=YbIJwD0vC5nhUGG8NcIcVFuc1gAvRZEiDQXzYLH3gw2n235hUet98+RqhM/cOEC8
	PlAH+o7qmV478IixeQdav/+toAGEEXzy5KkDAtkPAuFk9jUczAxf8yB4LMMLTP0Srww
	UlQcrllUnMyQ63aKTQ9FX34Z/H1ULzcW20ZI3jfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659975652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/7ioCRhYVu0Q4S0NxMyCTCDTEFTVM70nSFEjrdTklWg=;
	b=dw4zwIbsI37rqdbNyC0W/6yxxQzb1K08mauQtGU0U6nTi8Pz2gI5JuweDz/v9Ncu
	7ROSspkjTGrhAyprn6HFLAC2/X59/hlb3aQ4MBKV9IOdnMAaXn/AAQc/h0rbRfjd5Wt
	pI3hQO6zcu6M0APjTgLKtO9JMen1lUmrr6ElpwkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e4254f8-52169196-763f-46bf-b0a3-3ef1e6693f45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7298e118b6b473bf4c9ea14a6f054e1ee9c7c71839386680b52d916e22f320ce
Date: Mon, 8 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659975652
