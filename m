Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639CB2F29
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661009452;
	h=To:Subject:From:Message-Id:Date;
	bh=KMOIfDTS13lSxbaqbXoIeH7zTiTokPlKiPZ5SRLs2eQ=;
	b=R5ICkgBCtJMsDKny7cdz0mVfmtaS/vMg+NvM+pLdcFndQb3YagDa7WR0IIxc9TJX
	9qcYmeOBj6B4nwgNao/sWWq3tS4y9qt6ZWl/eUxWzFybriLhP7710qWBhHYsu/co7yv
	uV5/V7jMNJQZMsO6mPqHOfCnXikB9iMT7Kpl8ghc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661009452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KMOIfDTS13lSxbaqbXoIeH7zTiTokPlKiPZ5SRLs2eQ=;
	b=eSVyIYvwELdq/a/ZuMSBSPN45MUi/WvpxPyHaGREJ6wvBc6CzzCx3bt0GIbX77M+
	M438JhoCIDGi7Ez7eVdPuod0q6VR9ed1sHtCz2YmZbX2wRvJ6xsGAQBpcFWoJLIuO97
	NZTHYznGaaMFAmG4JkW4N48dfMJRL0go7okIpnWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bbe0de18-e4c2495e-b076-4e87-8312-ad7c82e76b31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65877d78906d86598bb3a6d4f0c8682017101be9afc5a6dc820945cbe9476ee3
Date: Sat, 20 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661009452
