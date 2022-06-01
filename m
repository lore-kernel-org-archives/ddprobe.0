Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6892FB6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 19:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654111379;
	h=To:Subject:From:Message-Id:Date;
	bh=h18DDuspZBH6tuJLCkOumsxzTtbEK9abxjrKpGJPMho=;
	b=gGTODJxuaqDbs3bqXtLgWss7F9TBOPpDppvGB+YNmfkg0ld4b5wlO9h6vKKs1Hjf
	2j/moyBMpsfEOo0megwMaaPKxOav2yhsBFO25u0ScDn0RlcqWqdVulCCQqGtK5qMkh5
	KCWguQ6BGtp/lcT3ZwyyA583AiPYV6IGVbsy1eLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654111379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h18DDuspZBH6tuJLCkOumsxzTtbEK9abxjrKpGJPMho=;
	b=hphD6rO2z8Nmrzei2RgCHAI+5AyyRWFztsQJyc1kBjG3zGmqEc3eddCpYzITYjpA
	C8R4Ncn2100Km+524OMOhrjjmUJTIlQguId0eZ82QoBQTf/m+UFu+vKgFuJXD2gNY+g
	WVtp22KEczKq50+FivHea7w0Jcylwl6iMYpKIXI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018120b89f7b-3c226efd-2709-4a4c-8b56-6d7ef0ec8eb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92e9263bbd3d5ddb81626410744b356f89a0707a9b4cfddda3009064f7f0e18c
Date: Wed, 1 Jun 2022 19:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654111379
