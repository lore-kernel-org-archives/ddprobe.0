Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A23123C2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653730379;
	h=To:Subject:From:Message-Id:Date;
	bh=ODKPLh5uIZbSofH0A18cPh4d+ahWL/lTE1qP7VFvUv0=;
	b=TRQgfUGDRdHuaunkmsPb6W99eBk8CpDYJS0GwfqrBCRJn4XQgp/koJKhxHvtzofC
	XGscCmtWPMa35bNj09FKIAlaIRL7+oBSL68Om2tWSyAM4GOMK+icJwCpZ7hnRGHPAM0
	JJHGA4q8UikxKg4BnN+f+7qKFnLYlMaZn6KuKxmM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653730379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ODKPLh5uIZbSofH0A18cPh4d+ahWL/lTE1qP7VFvUv0=;
	b=TDmhwz3Egj3LI9HUQgTSZk9TmpLh/lbG7RgUv3dPQrh+17E+Lf+PdMcVEBXPFQz2
	tBUam34pGANHtb5KnH+f4OFsl3CS7u1uKkWTQFUje6Xe0acdxFXTEmcGxbuf96ctVka
	8F2ss2BBCPDcqdDbzfv/gIYz5lAWZJVHpxFyahZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a03060b-92e21834-a405-495c-a9ea-0e18462ddf3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9afb14df469ba22c13fc9b0cd41ce78be616a6cb77a6d48a58343d3aa1cb452c
Date: Sat, 28 May 2022 09:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653730379
