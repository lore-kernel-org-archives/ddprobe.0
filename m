Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2838538A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659130253;
	h=To:Subject:From:Message-Id:Date;
	bh=AwxAkA2VlpDiMidqvish26l2WxpKlAHcpK/+AIBbi9Y=;
	b=BEkzDzCXfD4puhE043O2ByGRHhS+NdG7qxsZiGKdgZLhIGLRdHag4Fsad6uww8Oi
	DAY5FZmi+OgLLE7OFwqv0/aTs7GDqaRGSASeK22oZviaFqA0hLVeeHLPkjV+ttX4Jbv
	t9lWjb3lz7eGV4+A+M0kII7GXHfgV+faIHfk+Gbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659130253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AwxAkA2VlpDiMidqvish26l2WxpKlAHcpK/+AIBbi9Y=;
	b=ItC+3jVFp1vH1qlC3gj6JdM9XAVfQ5OjYVlGZVRR1XIHPHUT+x1g90AVgrb9ihSM
	/xL/54BWwToO9sRzCKpswhhbT45oKSsvpVtPBXVahFH/0XpUg9fzm/ufowWghp+1A0T
	7SkZRyQNhW0rRFRw082RTEWux616UVqjGPxdL2EA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824bde8d22-a5558502-c445-40a0-aa39-8309a913826e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 377c69210e5e189a11378dc747863fd4d9aee7aa118fa04887bbfb33a97c4bbe
Date: Fri, 29 Jul 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659130252
