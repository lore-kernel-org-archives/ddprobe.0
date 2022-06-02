Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F963D99
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 23:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654213919;
	h=To:Subject:From:Message-Id:Date;
	bh=BJVVedOX8my70w86Trc1mZotkmKhMTT45T5ULk7zs9Y=;
	b=hxmgS0eBonm87YVTCBsn/zIjFB5K8n2A+Cj32h1kyZ4CzLDTBhqXpL6EcVBottLP
	gIxtISyWfR6y87ozrGAYB/w3c03+oeCfd9bEfrLOeYX0W5GvYfJsrNdCyrNLrYKafQC
	/V55vBkn/ljTjaOc7Fcm/P53JcitXjedPMyGdznQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654213919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BJVVedOX8my70w86Trc1mZotkmKhMTT45T5ULk7zs9Y=;
	b=AzdsvSmp4MV641ciuMjVZiplqCEEs8xhu4Uj8RVGdE5wRmHIPkG3dbsubXs0FJ2H
	AeMzq3fWwQd0fpoRpqHxnBTBxXdCgvetuKixfxmm2cgNf8moCQ7OxX6SW1M2jbMkRnS
	vU6aNVhiz2r4rHzQ5Ae4jwFuyDAfnAgdtY/VHalo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018126d54212-68dc75db-67af-433d-8028-0ddeda4b5e39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f34f7444a319d00640a169b6c52356bc6bec2ad42dcb0d829f77389c0b96b432
Date: Thu, 2 Jun 2022 23:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654213919
