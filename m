Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0F37C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3323C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674505385;
	bh=IIUq5XkO+LHWrQ35r5a6lvxSuSBAo0SA8L0E05cCxaA=;
	h=To:Subject:From:Date:From;
	b=N8o79//r+jCZsEiv/aEZI9OEt5uIWozLSGp8Ut1rjqxekD+iC8OZvNDE3tmSbkNWt
	 IFeOCA43b9597Vg3Cp5ofwrDFooaeDgsyOyNAknCfu2QLnS0Oc1O8g8+kdiQbhsxz0
	 JD3OwYbh5Le8jeGQJfIxKt1qkmC7D6BuliDOnkHNQB+fCI4X3pwj/4pw+HFiqwW22G
	 7yB7PTwLiEgLAJ4yBu3Qpsu33VT9IBIwRm3zNthMON1pHtVM6G+lvR56EIFuzIRUkB
	 h7eEY8GISwDmhk5xynl5A6A9h6JAAL82bHlRiyr9G15M9aPrU2wRjBK6i9rfcjuh89
	 A80a9i5F8c/Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78C6C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167450538574.13823.11501510388351208178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f9390e84790ffc5584a14c24530bfdd658091400e8678977533d467354bee1
Date: Mon, 23 Jan 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674505385
