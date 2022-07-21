Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25906291C
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658402812;
	h=To:Subject:From:Message-Id:Date;
	bh=FCQLZ+iEOd2kGJR9ZLVwvlTAu/8VUt6qOgEyO/fcjNk=;
	b=Y5Sz4GA94bQ4p+GAdrpequ+3DSnC2XsG7pyyNsvhwAKIhuw3Akj8FpemNYUIgBaV
	Dba5H7B44F52SLLpiOIMjOlNt4sojWmCrCqBqmU8fzqE9SVXSuz0MkGss3YrLa9b3Py
	X/q7RyQFYC9vLa+8AJjLti7HvehW4ywfOWRn7g2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658402812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FCQLZ+iEOd2kGJR9ZLVwvlTAu/8VUt6qOgEyO/fcjNk=;
	b=YGA1CWmpwyzLZRIaUPDXau6culCzax4oc7gdnzRgyuKlPQNBev5ppILb44ZAuRKS
	t0FDJj9XQ1apN38BDo1lSeKWgz0NWnq6651uNSCnSDwrrLNRx9V/U/Nmvkw3YIZCZOK
	5C2ii9PpgJlgCIxHBc9FqK6sT1llioGUC6Km+NKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822082b172-52cbd755-e390-4cfe-9e2a-c904ae3e093d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a43557ce417db9b30801c7787bad48dd35fb69bb054d39706cd0cfc9309c3ea0
Date: Thu, 21 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658402812
