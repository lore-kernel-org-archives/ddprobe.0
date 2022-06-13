Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE4A7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 21:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655157359;
	h=To:Subject:From:Message-Id:Date;
	bh=OlJwwrFjzc1oykrcYCVLqrAgmy2SibhJWGWvHhKlgDY=;
	b=ZJ4Yr2zsMS6PBzAGpDxOx9cQLZ18iRNt8Z7NObxCDWVtk65IBBdqIxhbju2EqulP
	Li9wen3O7GZoK8Yzsys4U/xdwhRuGF53Q3BcrI7MIQlgrSZOBvrvqv172bnm+cmNGoA
	b1fJThWxRUrHtrTiiL+jilZv5miK/C6eaGn2++C4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655157359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OlJwwrFjzc1oykrcYCVLqrAgmy2SibhJWGWvHhKlgDY=;
	b=dfMaNQ88G+prMgOTUnQhSAtLKP0CSCMOJwf/egWAfvrDJ3X6zvFJ14v5zHzna7Qs
	h6DfdkV8nZ1+6momI53AZg3vNcZMEGgf3GKKpcCSpG2dwDJKiJ1tQt0OKCv24LWYemr
	PMfsrmH37mVdZMH1wFcfk0RoyRhhAXl3bPai9wis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f110262-b46c9a2b-ec18-4546-8174-2b8b91c4bfa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7de99ba321719fb08d30597b165c2e46ae1c4c61bdcaf234dc21445fbd4a7724
Date: Mon, 13 Jun 2022 21:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655157359
