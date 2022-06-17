Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FAD33C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 18:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655489759;
	h=To:Subject:From:Message-Id:Date;
	bh=KTz7lmWJWhbV79IBOJ1MZkK5HxCmQloTPkxZwRfDEdw=;
	b=ljKxF5Ck2I9akvfGOdYXAz0OT2TSQFAcHJ9AuVlnB26gF90kt3cHZ+80lczYGXEj
	+190aBz+TUgKSM6OUMr1Yu4luT10XXGXFgO0QbNoY1+hmUNwct9uZZSGWsY/+HGEe10
	XmuLeTas2NxFN39WgGEjfZ8ARzxUrVXzmnZc+hX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655489759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KTz7lmWJWhbV79IBOJ1MZkK5HxCmQloTPkxZwRfDEdw=;
	b=AAQjfXCmbsBAvAN31LTNJLTfhqA5xFgkbIHOnsrSdmWWlxuZACdK12GDvGzzG+ch
	4aazRsXq0j8SwpEb07t5Qke50gxN6JC2Q1igSoQXA/rjZJaBtkOL/enU4Tt+QpTAAPk
	ZGA9xtD6r2odkd1voq8+avVSJDGWMc7XIjZENfxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172e10801-58bd8e3a-70e9-43a2-bea7-c2e2b4b17c82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6594953eaa87a9f8c260e340dd4fbb141cef9bad373414bb97cabca3a05e1532
Date: Fri, 17 Jun 2022 18:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655489759
