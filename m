Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172067B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 04:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655612819;
	h=To:Subject:From:Message-Id:Date;
	bh=IIA9BrDOO/IAFNs8f3K3k7csVikjHYjRHOcZCf5P/J0=;
	b=dOO6emHQuZRO7bFtIz9TIW27Smzggx0OBdZ+tp92EcsqA4VQ6a4keZgiJ3G0rBZI
	rUkPDnN2qzk26HaUl1duLhRL2D13slePli7sgfZP/3eHFAfmC2NoQsTYtpSBnQJ+WSz
	PWAZcPwU4NiXfN8RxF2mK1h8PORBoSsHwn/xmB+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655612819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IIA9BrDOO/IAFNs8f3K3k7csVikjHYjRHOcZCf5P/J0=;
	b=fII22T/rEdcZK1rfILkN93jYrubhCR9pemTc55rcGE2AxQaiDfTFvhsWjNRCpeAF
	gLHAhvXFSGwEEF5aHsspyjPNW0YDFjS6MG819Bl5AbfaBR8+rifkawcKJR7gFFhetkD
	fMA786u/PEaWv1UOsvBv5uC6IzWMtzdGvKlr5VSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a36c770-14bf9868-9d19-4e4c-8da1-83ae3c481545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a773fa2118a3ccc27d9befcb8e81ed2d20ae9f53eb146c0bc43863c20700d3d
Date: Sun, 19 Jun 2022 04:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655612819
