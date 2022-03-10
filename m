Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556207A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646889984;
	h=To:Subject:From:Message-Id:Date;
	bh=a/qp5BuXxUSEx4OOSXyGm1F7iZ7kBF91pcAzLTCyfEw=;
	b=EvC6jOOS0hYroybLiWpi8kpb5Vecx1Hx1DsWLz/nJ+cwOR6al0S0n91M7IMk2aBv
	yXNkcPxnqtooW2qbfAS47tVsyrGN9PNqEAkKx5GswbxtsK12zjvqfSPForSftx8Vrho
	tT6G/QTTMSGiG1SEdO6cJnmbrBg7YSluJlALdgXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646889984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a/qp5BuXxUSEx4OOSXyGm1F7iZ7kBF91pcAzLTCyfEw=;
	b=S+8RcMM/9M2hM6QIfa6WeF8+46jt7nH2aY2A0nda6cVQxha9864iPRVP1QLY2jl3
	MmZDsbZDeFodco1uQDdXGmeIm+fDozawt+bg/E9uMl5IMHZDi4+y0FColCPGgpDwawa
	DrUmd/Rq3GInvDeqixJyyJtiKhDluQTxv6j5fgQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f724ae2e2-2c7e6c1b-6e02-4a22-a834-38dc92477f56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c645a3ff802fda7f0a0727cdae573dc26145d970bd5d7ac2fa64add434980773
Date: Thu, 10 Mar 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646889984
