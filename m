Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2651F7E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 00:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655338379;
	h=To:Subject:From:Message-Id:Date;
	bh=FI6CG7ROV+lXvrEFke1Vfgz1U40pCz/u5P2vEp0mFjA=;
	b=jAhNOmhFHEq+aTWmU4P33VqdA7OpJHGbDEQCC7DXU6MHNNUZiRPamPTBsonUo9gc
	Dp9Gp4qgGXdAYHzee6Woadi9OUMrk/sNrQVr3PPl2ZTduzghjOmPlU+6B6dQ3Hq8ury
	sT9pnqQQ9q8Nz30YIHSNf15Et2z1RUad3aewrTig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655338379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FI6CG7ROV+lXvrEFke1Vfgz1U40pCz/u5P2vEp0mFjA=;
	b=i6R5vcuMQQnqzt5xV2nQPV00fD7hM2VEHDTPrzu6C39zeSYFOyhYjrRQ4YJ6IJYO
	f/KEzLzvnuXHB02BH9CjWHTLDTgYM2llIr56AskHn2PjbnOk4BEJRX2ixPA+RVxaqCv
	T2eau5U/QuEKhithRieFc4uYAAWP7vyUGhN26qkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169db281c-8d230734-6f68-4604-98ce-aa9c9db250f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15c6b983023cbef1d652693331408ae85b329bbe245ab76c515c64a63686ffc8
Date: Thu, 16 Jun 2022 00:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655338379
