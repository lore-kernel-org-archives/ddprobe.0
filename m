Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B47EC0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 13:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655041739;
	h=To:Subject:From:Message-Id:Date;
	bh=ql2QWLGxw3LbKsxe+6O3OwZYWQ+IZKiaztBHuFj5LEM=;
	b=cbMvY+s5Jb5lGkBybrM+EN3Hbk6c4QoZP/2BJuJjOzyfiCji9C/soqVXVb+7GQuP
	KAmwB2XyS5d/h6svFCP1B+vTAj6w2bjO5TcVgGX0h9OsNe4gbMMFnTRPTRzGnTjGWAC
	UJpDI/IMpYHSM8HKtcff/ZPqkVyhJWO6HQUSCrFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655041739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ql2QWLGxw3LbKsxe+6O3OwZYWQ+IZKiaztBHuFj5LEM=;
	b=e2D1k2JP+rnEgvW62nTx2/T/EsHwNCV+qgFj3CENLc185V9NlquZMZ+4lWj85lb/
	6Wxv/4enYFXAl1d2rRFwW++Mz/wzhoRaguEQYjAif9BNuDKi71ig/FE3ANwQMr8eUGq
	bMP7Qmh/O4tMboQW/tuG5TySl0LQMAUAEZvxkOIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181582cc9d2-3bd11dc4-30e6-481f-81e7-8b350bebce1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2ff5731c73321ab8717ed92c800faed25b77450572af7dea75634b4009cee85
Date: Sun, 12 Jun 2022 13:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655041738
