Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D2D28F7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660257652;
	h=To:Subject:From:Message-Id:Date;
	bh=iUiiZ0qRH3LNPokbP1bKTHpRCaMyb1cD+WKvYNNnVps=;
	b=XRqSP9BviPS3UF1e6ZHwbZ5d8kffkdrXiqBs3rSrtmB3VLEaAa4E/3aGCVSYpTGp
	+XIwmKv1+an1/vKsaqbHoO9eIbrhpeHiUUZpUcUYW7+DIuPDJrsGQ2t9likeSEQCBRR
	UhWrlwFT8ovez+rh6YFetYcFgtnK3YCmvaS0GhZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660257652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iUiiZ0qRH3LNPokbP1bKTHpRCaMyb1cD+WKvYNNnVps=;
	b=AJKbEVqIbAIOYEN7LTgWcj5zf6tDvTY56SMneTH7xDGUCaHsRdpsCG+OsHG7gBMd
	FLOiwZtT1XeKlelvcn6TPkRCrKYIkyE1JFQyAUdtrRBzMkRBYEmTq6P02bEQn+zQpNx
	DMtUkFHaruiJFC53adVpziPwp0u9K2frt92YSNxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828f114f5a-a5a3615e-ffcd-4a88-8572-a085ab57f53a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6ec552933ed0849840b93034714762c3a5898521abbf00e0cdc05711ca9b35a
Date: Thu, 11 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660257652
