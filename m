Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710F523AC
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645081884;
	h=To:Subject:From:Message-Id:Date;
	bh=t33X3nJ+2xJePRrreak/UbMZyrgNpp44fBaDSMThtrU=;
	b=RDM8rM5/qXwEQy+QzvbjNUdYdCkr3IY0x3cSCRptCpyJxmOYO4VrIgVZ98AtRyXb
	daiLYLzOrsBuBY7xtguyp/CKKirPRtu3DLHy0ZnOtZJNZpcX2l+RcJ/E3OhfWS0ox2K
	qqRyG2T1gTPSKkUUleGQYk79fVGNax6VFB2BRuKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645081884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t33X3nJ+2xJePRrreak/UbMZyrgNpp44fBaDSMThtrU=;
	b=fGtN9OKrWeppO6hIV3Jtaxlj0Hyz/xTqqRGZxMcjyTmocR9U2G0xF2kqJNDJG6+i
	Tx4Sl7MfCOQpuaNclRjiPmCqKao3oT7k2NK48Ol01ySyIIwZTgZd0RvZM+BtHWPosqI
	0fHd+rRj0TKAi+cm/KfMZ5zoO43AkBkCXYXLanxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06857847-48ca614e-a062-4b70-8709-f81f7a648a98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3a7b281f97f240a0ebe902d02612e665ffc8b3d16fb3ee60243cce3b13299fa
Date: Thu, 17 Feb 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645081884
