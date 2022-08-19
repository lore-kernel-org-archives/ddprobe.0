Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EF14697
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660931452;
	h=To:Subject:From:Message-Id:Date;
	bh=dVBKup1JQZvZeI4bUyAtSO0q3rrnHuC95KZXRDiGXkM=;
	b=XVzOOakxqK/s9HB3YEssp2KI9IiW/G8xA6Cmo4wVH5KrMqjT1IYzN5eKbG4bB4Ui
	LjQOslgCRka5EM5h2BCrpfxgVHU0kOP47jYOuXbT7gkEH9jvkh46ogJT8hz1cP4x2M9
	MiRWIKdgx8wAACx2OmQ/KHygXNBTHYIhaVjBBY2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660931452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dVBKup1JQZvZeI4bUyAtSO0q3rrnHuC95KZXRDiGXkM=;
	b=WNuwnbcsJwJmfBSbXfNxhso4RR0rUEToaZZ/6Eg18Eh8gnH80tf2dKiPU7f804Jb
	e/pG/HBEO/vgzR0ga3k5YTv2DbZH0ncCdTqkaWFyhMnpMbvai8eyOc4G6jl9flzZCyv
	men9GtuJoH1+KjEXmOJkBskauIU+5yPoqDw985SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b73aaea3-56f555bd-d5bc-4880-ad24-4d45b5123e1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0695140597bbae5001bd2199a73531f972f6f8deb47df0ba1dff834064d974e
Date: Fri, 19 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660931452
