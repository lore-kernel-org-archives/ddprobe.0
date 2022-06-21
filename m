Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006A91C0C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 22:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655852339;
	h=To:Subject:From:Message-Id:Date;
	bh=enV6lE32U4vSOj0hVflBszPJset86P7iH4MgSacp5T4=;
	b=GXglvw5TK2KCF+Q6pZ7/rEDFRoRU3yJT4NbUrabh4vwWVecjaUhqjhiJWi4FZCIm
	E6X0UoUtM4EMaVKvwOUsrLUrzX4s6lVWzq3uid9ap8NCUX11Lv3c+9ifOgAyqsaShgP
	6bPUQPr1e+ZFlr521Gqk5wttnQ8Prdj4BiW2RN/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655852339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=enV6lE32U4vSOj0hVflBszPJset86P7iH4MgSacp5T4=;
	b=U8vh0MZSE34/dwwAwQWBBdIC8d3OjYCeZNtRmvxH+kscC6HyTyHvBrUb7ne5lDEW
	wgdqtHUSKDwcPJUMD2FyIlwHqhE9qFothz0Wg+qpQ/4E9+bIpqsxZgMvP3SrGYVe26y
	cmOT69EqdzN++kV7KriOBZZBQLxNHZ3ywH9qtDDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181887d905c-f2ba06e9-f046-4608-ba39-2c7a86debc90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 691fd6c5c482168efc4577475175d1b6baaa692873733c01b5471d1b51988256
Date: Tue, 21 Jun 2022 22:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655852339
