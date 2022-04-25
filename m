Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8227C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 01:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650849238;
	h=To:Subject:From:Message-Id:Date;
	bh=b7qmYWbzW4sa21JKGXXYpEVOdT2/qMJxxgwYj3i6nCA=;
	b=DPc/xelB1DzPCFFiB1GT3H8ogz3nScJzPCgnHLSYvKVniNJRG4fYKO7YY/dQMxPs
	uul1uFMHeZ1AXx2GsDpUr3Dq4yNLCZXUjJslxFMn2JR47FhT7MkWV3llDliqTrWdeY8
	cUZvHPVyLNpJGlWbiqdimIG0/MxVBsz+BriYq8DE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650849238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b7qmYWbzW4sa21JKGXXYpEVOdT2/qMJxxgwYj3i6nCA=;
	b=MPk4REqKCa9kXcm3RpbGlSMkYHvT15xJ0vCjD47f2i4A8UUdVzXHfIxtF+8qk1Er
	m8Mk8D7rXg92jPtwYLNFxJ4XCSPReOLNi6iJTZyf7IlxupbZafs29W5msi8WAOHLLKw
	FlX0yx5RtxWxUcuXEJcXgu0qtbyX0ITBL8q3VX2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805e484d0a-340066fc-07a9-4571-9c85-7f8b8052cfdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abd7718a278e95f6845314c618507104a376330001e340099c7f998251d1d029
Date: Mon, 25 Apr 2022 01:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650849238
