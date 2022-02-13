Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C0029A5
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 05:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644730844;
	h=To:Subject:From:Message-Id:Date;
	bh=OUr0eZ8j4uTOIg/hi14DdycRbdRcmjmihuikT4TbqRI=;
	b=TwyTTk96rfcV7tbI4zMeN7VGNHjbhApr7JVEOwRs0nGB1gBHPaH3UT4086fzpM9t
	wV80Dp6NPOmu887oemDRh1EUDTU2klnt7HbO+l13e29adCk5cMUWuEoUZIzTdlLqR3q
	S4qVRBxoACxH3HtIAkJj1O6CgDLKdKG52VgSqhzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644730844;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OUr0eZ8j4uTOIg/hi14DdycRbdRcmjmihuikT4TbqRI=;
	b=NP+gHKbYu92bdXOTc4WNZUPQ/8Zqg5uow7I4oSPfPgOyN9ygMIP5/iD4LgaZqgDQ
	MPxuikfRlP7sfxWY8A3FurMsUeJUxdZzJpgjkCItIz1ycqg8F+rpED0/Maz7eYtkQxA
	J3FRAYSWSA1vF9bujgpIONQhtl1Lz8VRs4VJgido=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef19905ce-0198d00d-feb3-4104-b05d-6d92d0107015-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19feef46728997e7599df6c960fd318764e51501304ccee3ad3ce54e2000ee82
Date: Sun, 13 Feb 2022 05:40:44 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644730844
