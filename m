Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BDA187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645043784;
	h=To:Subject:From:Message-Id:Date;
	bh=AetibET+/1F4jBitt0cLMGLvDwww9yvLxbfAUOfToAo=;
	b=Rg4XbP5gSMJd+wfYOBxJ+l4DCIsd01MCSCA9eqdjCR1+22dAsJo3YjLBcjJ2tVOf
	s+HzUYRyz3N8rxL2p6hKZq/lQq+K2bjPDEXpm5qlF4R6s7dZZMcTkKwbdW15pWjzFpW
	Lut4/6vu1/bfOwZe+T7ohSHtXNpwC9wWpBuvk80o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645043784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AetibET+/1F4jBitt0cLMGLvDwww9yvLxbfAUOfToAo=;
	b=FAyyzhtXS6Yl77152sD7U6+6/gsGlJQBejcotmMa1Wp6pKV40hfW3VAdSfML342+
	t8fBpmjn9x9xRYBc6CoF+/AT3Q7jznaAtNLHOM8XIM0HEl7sF5uiAExwOqSP3iSRqlY
	+wnJ33KLJBhmX3LiFOlXC2oEkosyBFY7I6+QSK0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04401c26-87c17418-0324-4bae-a250-04725d0cc5a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97120f2a5bd94f7e9a724dcfbb92958da47b6bc6cd43df3b7fd6a1c942ec0e31
Date: Wed, 16 Feb 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645043784
