Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1081733D6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 21:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654120499;
	h=To:Subject:From:Message-Id:Date;
	bh=+eeH2uuV4B3JTyP1TutqmQDuOx5xQZ8aetMOFi8LQ5I=;
	b=khhGQE7SBOki9YDEpLKpTdHtn6qb90T4bjrTZ0sZyoWQeeeQ2wmU2gE+7Fb4jyDq
	Ugn6qscITeOSAudHfydjCr4iZDMPHA/4xlM4sonT5qE3ZU2vnTRmyhxNpvvJfrrJvMH
	+VClplss8XZXSt3LzCqJn6HM1PnRrgwbfJHPh0Ic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654120499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+eeH2uuV4B3JTyP1TutqmQDuOx5xQZ8aetMOFi8LQ5I=;
	b=c8JlFWaVAYR4CssUKvdkHP6dVnkShJiDT+6zIOi3ngHAUn+GvkbvMtDBs0VdD2aD
	UYP3blwNhkiBq87sa3/cQRcTswDPlK0+HJrJzYGy0+E5DShoENRDpL1VB2Uu/Hm+9Vg
	DFkJBovL0gYI3fQkzWsTo9hDfrabERzn0PaQyC84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812143c85e-4f2914f6-3fdc-4e2f-b908-6c4bd45517d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c221630fed98e08df17305664d247aa6300c3aa653d8fa4ca571e419889b2888
Date: Wed, 1 Jun 2022 21:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654120499
