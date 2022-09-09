Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A0F622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F85C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662700253;
	bh=nq7t7bkfjiR03kLdiFkYLVuCm5r1RdNKhiPlHVYuMEY=;
	h=To:Subject:From:Date:From;
	b=nEX5RJfzXPnwD9t98wtF5oUyrLYjfKrEOGcALYbbZWhms4ChlpoXXAz37/7+ohsqq
	 FIR0aN+ZWPljJGoyPL9iN+ukpRlnlt/UzgHevtJirjyKb4xzvFgXZp6YyLsKmJnkhR
	 10c9GLwQ/xsiAbd5RAJ7wQSo9YjU78KEJRwVIYpJbdHoTEzH3qLqXljjgf8u059LYW
	 Unis3K/iTDpxOmd1RbrWaA6exssB2NmQGUoLY90ZadBe3KNZ1y7q0u6HK+eBBy7nzt
	 zcSwa0I2qNMA9zTWmEBspMjLqwI7hYLtH2zDGUiom+zkEO34ypmo6d+YfIg2ziluk8
	 XJAT8SjsjKZYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54562ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270025332.13043.15025618860255894715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093d3e2c9ce47effec2a1088cc5bd0d0968a739b25364ef516bcc830a340c37f
Date: Fri, 09 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662700253
