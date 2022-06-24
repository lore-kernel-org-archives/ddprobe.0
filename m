Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175827C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656030412;
	h=To:Subject:From:Message-Id:Date;
	bh=VfNuvjhWI5DuUjANDBa0FNbgArabvfAe2nrofydB9cw=;
	b=jzWqNlz6L8Ky45qzepxrawFzrtS8+jTk4jtpiBkmBevvX/K33efmUl0IMNFFgep4
	MrPVLDVu8RER/vnHxwdaokXOPBCk8o60Fsq9k3zIiOs+TbrVEx4cZDLbNUkx7gnxIbC
	HbAuCV35LYsLZGVfgKrv9Eea0a54Fv3LktEK494s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656030412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VfNuvjhWI5DuUjANDBa0FNbgArabvfAe2nrofydB9cw=;
	b=A9hNwB1PSTGCRdjqavtr19LtsjqUZvMiTeL8KC0+vSXwHbubgVEdPIkuIMmgFmpj
	w4+YsB/7LDwQ8nIh1er5FMXNFPVyEVfXggPk500YIjcME0NM5gxNNn2uGks+abdlC3O
	EAPuOLNITAT5PL/FPqQPioFdTNaRRZSS2af518Y0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181931abe0f-20b365e0-3902-4361-b90c-368988ea57e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92097f8b7e46de2f06689f1ba253744fec03327b4bfbbb44081009ead6d0d8e2
Date: Fri, 24 Jun 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656030412
