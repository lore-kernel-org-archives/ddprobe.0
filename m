Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29969626
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 11:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654081499;
	h=To:Subject:From:Message-Id:Date;
	bh=pUnWyJh5OhrFIKw5q7dMoY/qu9OPut+PvtesDb/SXjA=;
	b=EWc/TC5Hd+PoOo5xgHa3HIKFM/MHMImfwik/r3nUlH21cFNM4Qo16/rG8bgIPTNP
	TbzjzkQdpSiExdGfxHTX5PBlBxJTyVBFqSz0CkzXrEo1mYDS2NA9iMMXlFu2CgJFquR
	jROiOtaiRCwrQ/igI8wQZA/Eejwb8kNcYhLSD2jY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654081499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pUnWyJh5OhrFIKw5q7dMoY/qu9OPut+PvtesDb/SXjA=;
	b=PF6ENz1F1cYARUNC/OPcFLYuOczhB1Bx/iQH3umQ6+Uw7FfntThle5KJajFNi7eb
	RHcSgyHfVJguygbcDxF8xyaK3sl6n9Mf+mokPwF1ilwem4od229jJK50o4ZrPOaV5JT
	2YlMQG9hjt6w/OEGP1JVFg+ZBGPahBtn6pCV4AJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ef0b094-4554f16b-8d17-473e-8c25-757d6fc42432-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12ee400f48c756579a394fcafd551f590e1a674d64ed50bfe864cfbd1ea51154
Date: Wed, 1 Jun 2022 11:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654081499
