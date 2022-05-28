Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1317128E4
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 14:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653748559;
	h=To:Subject:From:Message-Id:Date;
	bh=hgQvKlqfxa+CtVqTpd7KGhs8HBH2YNXctC5i3tk4Qr4=;
	b=dTTh780gLniDod46EIOXJROCGCIGahDOjIgY/TOTMDj5dFajla/ujg5gs1eo+94A
	C2Z9LD2DCXYcknPQlBNcYGmH9XJhSVYFhacSzpS14AEtElMt4AOFkpcN7gs77e1LPue
	KkmDlnSiVHad79glwW6JvQycOdYi8NglG9JFLqLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653748559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hgQvKlqfxa+CtVqTpd7KGhs8HBH2YNXctC5i3tk4Qr4=;
	b=HDSMioN5HedBUsHgrduos+J3DTHexH2Y4BUJMAqgjJ2QKqAISlHWR5cYz7WYlgOY
	EH96YXH88cdjFr/SLyMa5cwVM5kBOGB/ezR+fTooGlDXaUtUuKzkg8hzGW7TRq/nNEJ
	2CGh6HJAZSSgALH7kgEagIutnxIwyrVmOzfxm9gc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b186da6-5c16bcc4-7e27-4163-8972-40bc6e9a4b01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 254885f3ac3be0a172842f1b70d937b8a916994c17a991c8011cb1c4b3ba838e
Date: Sat, 28 May 2022 14:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653748559
