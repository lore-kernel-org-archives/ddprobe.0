Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6ED96FC1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A6ADC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668441654;
	bh=HeJoBkC+yKMz6YBu+xB8cZsLWtp9Zji6N87cxtXSfkk=;
	h=To:Subject:From:Date:From;
	b=b/QwFwyjbwsPub9Sx9qi5OfLF76CXHuO4qcGcbsmIDWWD154KllbJ9cR7uYeYtnTR
	 e7O3g3VRkqsZxw/7maKj2IMHxYlUTaSA/X/YRFFn2RHP7kSpCQYayzX5vGAthuiQhY
	 2ZbDGKsbqIrGA0gf2giDc64P7wlonjtv/7+WUvPWTXIKtHGV7yqzmdnC2U9cMjT13R
	 O4B6XwwLBaECGBQgklZWIFl5D8TdJmpZEBmYGWPmtxo8PsU/0cEYthd4iAnwE7e1Qi
	 Bf008fwBD/srTxzVqQGXqsX6hSOGC59nB/8ro/y2WtL6UZgaIkSJX8eQKRdNLNzwEl
	 3QVRWTPLkuZUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B3BC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166844165441.12004.1343309838398003777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2509712fa6ca1e8fda8a0f5c48eb1ce57bfca906bd278334c11df9936bd242f5
Date: Mon, 14 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668441654
