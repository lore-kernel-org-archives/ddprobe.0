Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FC923A6
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660708852;
	h=To:Subject:From:Message-Id:Date;
	bh=oZBLHx92iiqeR6Ut686AXrtdnJnoHVBVNpOF2pMFib8=;
	b=DGjn5mlLcM06gEOupIiVcLLSBylujvxiBKcS6/un4idylJzInr9KyYGiBbCF0ago
	MLFVTWN2aiTD/k71lpWJ3l+wVKLjnEH3G5SzgmuLGa7hKPy8JJ0vwrt010CsjsZGnE9
	X5uKK7QPZIGlcjvP4kOO6InY96GrdbfANBG6g4Ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660708852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oZBLHx92iiqeR6Ut686AXrtdnJnoHVBVNpOF2pMFib8=;
	b=X8dr19HanuVvlH6mhVNUg5Y6Q5ZQsck1d2eB8+O1+WNFMVebelcOvqiZ51AO43tM
	yGnW6rinbSlOVtxa2fRnPR0Z5oJGLLe2YpISE4BYFO8900hiD4QtXgs6ia+IZwyzSeR
	p5mMyP7mCQLlqsSLCuNT3dwQfqe6JSAGlpkoZKAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9f61353-d227b7a6-3d42-4d43-9dcd-bab9a6e5c6c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f23c7896ac4357afe81d19a6220ee9f72b1e1408d2a4f2f28177ec0fd9d79345
Date: Wed, 17 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660708852
