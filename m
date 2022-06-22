Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259AE1843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 16:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655915399;
	h=To:Subject:From:Message-Id:Date;
	bh=Wd1DcvR3tKXdSSxr8WjcaRFnl3c3A2eSqSXIKUPP4HU=;
	b=AincOGYUN1gxIk1l+ksWQwrrk33EID8sOL0u2JCNSVbpqtfC95f6VcRvEXMnPCA2
	zSXV3Nzajb8RdAB5Ow+RNjam54lCWfCIGt/FzwZrLVAVn5lWYgfs0M7FGZSVCTU+XVy
	nnrsuN9hkl7kCfKu8xUpNnr2BmGpo5LlB+Mlx/Q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655915399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wd1DcvR3tKXdSSxr8WjcaRFnl3c3A2eSqSXIKUPP4HU=;
	b=kwrz5VnUUdzAnopB0YYUX3rqYtLB0XtD0b5aqsUOuEkAqwTnWi/+mo4JVwWP8dp/
	aqT7R70AZkrF1i31yJ9LgYIBuy/12AgU6u0iUG81ikT2O78C700ON/G6+qCNBSK1YXl
	Rt1alU7FZuWqxdgK64S+00h4LXLFN9GEMcdryAUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c3fc896-096849bf-243a-4129-82fc-91454a392361-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a137d1b1203ddce362fb906a2616bca848a1e5fae3878594260c1652c8fb797
Date: Wed, 22 Jun 2022 16:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655915399
