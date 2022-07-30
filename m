Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45283FF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659218453;
	h=To:Subject:From:Message-Id:Date;
	bh=P6W5K1+DMHTjCjzlt4wQCnvtPgkagR/F9pEfm+/OaJ0=;
	b=K7Caa6d8utLsJiRimPfW1QK/R2RvDC+k/CyLNX87ikORALqR9GeTCmxeq3q6wT2I
	qDb7TAq+9mvGDc5MBwbOOz5GlxHpES1FG0U8Quu7hU4bjVpRcCQIQsobaEw5l2ILXeF
	8iACQkwarLtv2tXi4XKOBZpr9JlFr2MhcjYsUXcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659218453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6W5K1+DMHTjCjzlt4wQCnvtPgkagR/F9pEfm+/OaJ0=;
	b=Wa/VKpyRX23S5nEgwfA8hOpDAmRQoRJBEN8orwuoC3fG5OH1eb1kVOSaGekgaBGT
	jPgcIkm09+83idXdSxoBwan9WKS/oPRPeT0gGFlyj+ROy3w/WfeCd+R59XDlqbNwWq5
	Fp3mjurtz1YrDSvQn2dmIUQ/AuMRLiOxmZtSV9pM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251206051-3c6e486f-ab3b-445d-961e-f2e3345bcfdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77c6ae68e4694c4fd306a90d7337efbf2aeef8bbca3d2b3e7877d5df392e4d1e
Date: Sat, 30 Jul 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659218452
