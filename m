Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED09A7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657976212;
	h=To:Subject:From:Message-Id:Date;
	bh=a2cxDSPqG70eaT7TLhiurYnhPGPQDfNYpkRRuJYDo/w=;
	b=IZ7LbEiXwdAsUiH+8Io26d9p+4ACt19UaVCohx7p2SDpaGVGCOiVKoNWajqDL0BY
	uaxWRbRj+l30IgVx0jQHQJdLskbMjQq1pLEwJgCUoEeMqmOizRh3EBSOdl+ELxWdyon
	De+9dKBgTrXGATfcG7MNdzQJaM1s2AwkUGk09p18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657976212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a2cxDSPqG70eaT7TLhiurYnhPGPQDfNYpkRRuJYDo/w=;
	b=iMmXiifZBd6JRDNiiWL6NMv2tugMGLrbofddUlFoFvHSrJVWAgDrz6/zZwura7cB
	AupmvcR3fwJ/UOkODjZTDECCmjVpBDmKYbCiEo7AXP2yiMrdQkTUP7JKgP+rxjoK6vR
	k6RBM/bOaqs35T97AURNvLuufev/UBJ6kl5Ya+0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207154b70-7c55aa9a-ab5e-46e1-8a92-73e2d17c82bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0e6f1fdb54a1d3c5498987ec410c52eba219caf2753b3d23804811aab05f02c
Date: Sat, 16 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657976212
