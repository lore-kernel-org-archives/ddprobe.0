Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D241C2D
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659805852;
	h=To:Subject:From:Message-Id:Date;
	bh=+D0KM+4cyptyxPi4hgmTm0X2hUAEUlQ3E1Xrti8sCk8=;
	b=SHr/Y2JKw6rucC8Zxhbg1Lyd9etezgdgd+kIf2VHANz4lfwMstUyVOwqMqWEwlZf
	L7fsH0HpKUQXQc4yGF5lfK6zL5SEZzLi7YOtHYsT7pxLvZNGFh2zGSby4TVKRUVS+07
	Jv1GZfGBOU0rEos6JtFan/2yFqWWVSGBveU3+DXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659805852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+D0KM+4cyptyxPi4hgmTm0X2hUAEUlQ3E1Xrti8sCk8=;
	b=Djk/sUlADhLX8c1pOKj/73OxGpNOyTy6FcRe+Xbz1X3plmGkGHhtL2X3Law3hWov
	Hw7b1g81V+B4TSVDkgpIJ8ZPjvxImIOt3nRm4VjqzHXVBP2frqpLY+tSP8dvIQ7Cy66
	yVfKY1oeayfbxRgTfaXLTFGvPcyjEiI3YPX0l1qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274236384-0f8c6c51-8fd0-44c8-85e6-4d42b635bbb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42cbe29f132b25e60f54173f8e786c54da5f5836014c96c4b417b41dcc9617f7
Date: Sat, 6 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659805852
