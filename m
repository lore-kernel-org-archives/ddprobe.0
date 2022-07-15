Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBDB7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657859212;
	h=To:Subject:From:Message-Id:Date;
	bh=CnWLdFHqRHK3FaHS7riJX42auLHN/Ra2+xLJinL/EgI=;
	b=lYw0Eo2Rak+xdYGpuOYVXuD+4O+agKLeQMWjzH7+ChwZxrV+PiUob7t85knT15FJ
	XazncFXNatPacu+geDhxwilePxEyZH0XDLdDN1wBXzTvGrLrwuD3UxV2UX6c765lh+i
	+vw3Pmr07pyYXcXRklKqkyze2z9ArQ0V/gnlMPOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657859212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CnWLdFHqRHK3FaHS7riJX42auLHN/Ra2+xLJinL/EgI=;
	b=Ye2TtsS0fCN7Zk06MJs+xXgyRfRWWid1CD7T88riZJOqX+j2pg6aF3H8ny6lnsrv
	DlxClfcIKieTfqfVk2J27isAW7l0Sg1rVjc57/eNyxw1yrg+1A7xzL+DTyYrF2dQOap
	S3kaj2iIveuEKKNEyEOXq8Ag2m3bQ+9W3FPcahns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182001c0465-86ea102d-5d77-41d5-a099-5ab47b91c4b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3a5c9aa40023e9723f4a93c55146e41d9f8f78a479b9631fa1631e56b087356
Date: Fri, 15 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657859212
