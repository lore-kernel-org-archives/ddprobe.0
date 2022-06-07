Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAC428FB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 15:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654616939;
	h=To:Subject:From:Message-Id:Date;
	bh=bCRKt7Jg0GrU4EjemzSaHwLQGFgMjL5a8AjHkDGsQVQ=;
	b=KrPFhFmMsj/a6aveHcrvUMns8yvcJKPrwBP/pIxq4o/GfeHzydxsDvH1GphvsiBG
	ziyFs65w720J/pnGUN4sk+zrpuyNkF2IheuNRmGfoOUatSTcQMskpeIC28kSbqBnksO
	i8ChRhG3mPuf3UWSmJZIuT5ghTNtHCwPuZtM9k3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654616939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bCRKt7Jg0GrU4EjemzSaHwLQGFgMjL5a8AjHkDGsQVQ=;
	b=Dk0qNeieD6YtsARgJtf2qf8QrXoWFbFPgSV00xynH0POulVqjNsFdQmH1ZnNfpmX
	qdg/U/6hvZfLFVeSucCTkozsLqr/pyHIwpatZvUPxtA4eKSsRnpTEhm0dTJMXm+XOhs
	MYJaYDv/3xqLEmhU6/FI0+ZgJiyjt+WGUn4nBEB4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813edadb67-8aac6cd9-a81b-4149-b069-ecfdfc4ff605-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eccefaf6e2fc60a3e26027c6286ca6beb851c7aa47fb15ebb1ef168229c6655f
Date: Tue, 7 Jun 2022 15:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654616939
