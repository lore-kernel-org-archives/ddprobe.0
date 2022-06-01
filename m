Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069D6645
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 22:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654123499;
	h=To:Subject:From:Message-Id:Date;
	bh=22CDmV4ULi8kQqr99y4nRUJqtXoxfRQbq/9icV1SydU=;
	b=Md+Kc1D4Qj5n0xeKCQdwHWsL6GSQy4THg0T4GknsJS11c3kEuthO1x5kzu69NsXN
	eSI724ct4grQBAo78S7O6nI4foN7sc2yG9OTsPj0lWNF/9ESrbpicrk16NxZFY3DoCD
	KZXYxd4FCTnua1vT1zHFC05gSP2T2BM5EYH2gJ+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654123499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=22CDmV4ULi8kQqr99y4nRUJqtXoxfRQbq/9icV1SydU=;
	b=k8gO1EU1+GwIewwmatZcHrqiS4FNhh+m5oY2TWAjYswkmR0ZczMdkBtP+u+lVmcz
	fqgaPCIrDSDUtPtS0qtkOYe1Q/vtmMzAA+960BLGpvp8+aFrVhdmmA44h04sNlPt9sb
	iInfjR4euIXDJ55pXHfaiblg+h3NX/zwV9Fy1Z3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018121718f0d-76c10264-1839-427e-95be-d251e499aa7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 414d4cb7ec2feda279838f5438fede282898d071adf29897aa211baba7c895f5
Date: Wed, 1 Jun 2022 22:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654123499
