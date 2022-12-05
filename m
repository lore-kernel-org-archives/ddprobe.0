Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B656417F6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7566DC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670233854;
	bh=SpXdAHed2fDgYeeBVxFyS+imyX43kFgs/VZ00et0agA=;
	h=To:Subject:From:Date:From;
	b=PRFPy40eXPOeww9s9hD7dL/BVKsGkuGWKtYxYg73rdyO//g75HGzeWI5PV6g3odnj
	 M8KEJzodwQnjQR6VgVA0T6fotUa6t8xZVpxKBfbW0yoPlpzUdZwOYCHeOnVZISmf0d
	 MfVd8BfNUGT6hXhlmAvnx0hnP+/A5lo4938LQHpTQaD80qY64O02hijpaw0g2u0cLF
	 qOH7x/WXWgo+rgAdBP8Tgiidb9Y1o+CyijrHa6mIci0WWfIIimAJCUdY4a+mocLLH9
	 Ott+phxflCp46MmmugakPB3+AEuvIWCwNPbQ/C8X1pTPrBwk4nDtlSSAdS7J013FCs
	 hbwoD43W7A2tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56464C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023385434.29928.2370042959288378463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5848cc8d3b384b4aa63fc73a7d5e52530a3c5795d14bee465f6066e0d6009473
Date: Mon, 05 Dec 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670233854
