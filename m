Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6EA15A5
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 06:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652249399;
	h=To:Subject:From:Message-Id:Date;
	bh=SYtQNGcKUcNpWxZHbJzdtgBIQC69DBCsf8axIfFcQ3A=;
	b=YVeyyybJSeOEg8oTjTIdXWRV3delzh7+N5x2AAnnKsrxu2eItaESE76GjdCmf1IV
	+N3Kv/HuKtO9jAVgntQGwl4NLrf8N0FWR0037MbWj6Oi2g8GbcfB1yC+5Bg7MCE6LAX
	p0mxCOz3F3QvuWkXZlXQGG/UedT/cyDCgvcA5ey0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652249399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SYtQNGcKUcNpWxZHbJzdtgBIQC69DBCsf8axIfFcQ3A=;
	b=Crz1Zkg7rR4yU+waxh1wTCU4p18SVbA1LVriBgGmsWmjBTa3Bmwlc4oKlMMLpG+K
	daJTV6VYV2gah9m3sCv1B9mk6zRBJdJH+V9P/H/qbPI6Nrl8vUG1QKCJgNG/4SO6Cb2
	fPTA6IGXwSMkiZ+rlwvh/f0l8O5CyiVH4+aURQLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1bd0ff9-e71948a0-af7d-4193-b48a-b8b1794cdf56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6397c60f2797f93a663a367836f4b1948aee84918c4a65e72242d3afda1b5e9e
Date: Wed, 11 May 2022 06:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652249399
