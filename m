Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543AC7C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 11:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644837634;
	h=To:Subject:From:Message-Id:Date;
	bh=JrQrevHTY+ZWtarjfzsWU2578YS4A1okLVJPL5ClGiQ=;
	b=EUl39zt0ThdL2MIJhKa4ya3qzSSKiwyb9Bg086fdZF4K6KoCoGAGxG0oEGmmvvni
	HvxZ3JGIaT4VY9a8cmx6w0nVRMZXOQNfgGqm0FfqJDzqUWR4QjJ5r8JI3Sq79JkODoy
	RCgwkEwWbMounqig5tjQ0E4/xjQKQQG3B/Iwthac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644837634;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JrQrevHTY+ZWtarjfzsWU2578YS4A1okLVJPL5ClGiQ=;
	b=Xs1uVQLrHOhh8GyKSbsQPPPtKg/T2hBlE+aB7C7wAgl9U1Wo4t91+QA0chrF29qy
	CBlGyiyVB/VIMOqm7TveEZ0g4HRKAnxa5LpEpIMItAgZJuguDhh2R1UiKRvvcYoyPvL
	hFd1/uSsgFrlVraoD3pFxkqCsF6mcZD6JOme2Uds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef7f6807f-eadf4bbd-a8b4-4106-a406-927bb67a54fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23fa8b81c239c0dcdb3d74ac720e9fda9c0b3650450c72d715fe03e15de47745
Date: Mon, 14 Feb 2022 11:20:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644837633
