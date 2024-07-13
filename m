Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5852A2F23
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720843163; cv=none; b=h9nHD68nkEbqIc09vzAfXuFi8MhDSa0UqprYFC5VfhVKA6ZzeyqZKBqanLAso6S7iqFLllXZB8L8I8L9PbBCAVnVGG7fjMoQk32DF68wCx3CH6Fsw4wL3qp6ibk52cHiZt0y5Y40oc2aW0sWWXlVGFbsgxt7eQn2Ap4ovldjEp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720843163; c=relaxed/simple;
	bh=paoEXgnH2NNAiOn/Hh/1UVdSLMWeKaPblOHn9ksKuuU=;
	h=To:Subject:From:Message-Id:Date; b=Jujd1kh4D1HLhvrg+i4bC+iEMpXKCXhl/ue58KTzBhYJZ5XwJTTksUPHAqj+ZCX8VCLK8YufCJhUqcAi3fASBqny3JzJ4fpXETtY4p/tFdCsoAHbWzYR9oaBJH2ByxrLNKPr4km3BJnmhuW8bi8P+JxizYNkREiPlh8K35ZOf0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUCrwc1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUCrwc1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E87B8C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720843162;
	bh=paoEXgnH2NNAiOn/Hh/1UVdSLMWeKaPblOHn9ksKuuU=;
	h=To:Subject:From:Date:From;
	b=EUCrwc1ylHO4wLNfF93siupYdYqvphpjVkEjqWKtidmDkn1Xbj0eBZROtBFculXlT
	 RNr6tjvfWzBOKyw4SWe+if0xcpmogYdJO+8MB+DZ3PwYLuiCcN3bIHI8mCH8ZyP69M
	 O7R2Ux3bFT9jHWCIT1udmK6szhKLwiKwNRshijk0mWxx/GbPOu2NnwRB2DV9nqwtTA
	 oadonBtyCw4yutDQNEArZsgnShzTNyQCckxFmoHi63LTgqV0rQ25lY4wd1inOkyoWP
	 lo5HUmRm0H8/spXk8N75aMpjuEhNZVUIRxn3GtLio5E3cjypn830bqkfrpHPpGtjNt
	 2HvVyq1KmqRdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDCF1C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084316278.13655.10415120276869727966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0419b51827f70ba86528e7623623344bb6f809ea651e9520dcab3ee1814cbc
Date: Sat, 13 Jul 2024 03:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720843162
