Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8700D7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 15:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644850841;
	h=To:Subject:From:Message-Id:Date;
	bh=O2ZcIaaGEwjrxerO9/5/qO5SCmjJvuy0ZP0xnxavAPU=;
	b=NHWZvjO1O9NFHnN5uW0wBO3QtM0q1GjoIIPSH6xLNhoqh8FSrzqEOhHKqD6fPb4A
	rIf2qtLkMAExGfdechdmaFHHY8OYwlNDHWl0lNleModE9f4C7ELzFJ/7vhyRqXhE91Z
	FNokXTpvksAUjLqdxLsuaF2lc5SphH8oVZqywj0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644850841;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O2ZcIaaGEwjrxerO9/5/qO5SCmjJvuy0ZP0xnxavAPU=;
	b=fUG9z8vdveaPoqwl8d+LeLfq5Z8sSGrqKdl5R4CpBiTwisX5xZx84wmT3gjGSIJg
	r57gZq6VlBAno5KQaY+wGSY8Kw+TbzxXLFQMawwCn0chEvWhTcs4KFt2b8Y/Jf3n1Vs
	3ni4Zi4YuuXznEfstT/nVY3Y02VCR4iU2oY+w54w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8c007c0-7b6ffc64-5d06-4b70-99e0-9c0f80cb9a67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a09011fcb5d25e7cd688d907f5301f2962fa5371aaf9e0e3ed9434b16491a4c4
Date: Mon, 14 Feb 2022 15:00:41 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644850841
