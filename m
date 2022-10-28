Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79251FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1ECC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666947054;
	bh=HgMIVqEEn8WPY5cgoS49wyOexS8103/CT5xPzef9ojA=;
	h=To:Subject:From:Date:From;
	b=LdXDWL3FL5C0aGtE19jXCaWxrBs26+rl/E2aesUAJVmW6Ltw/kxWY69p2zKlTttUo
	 GZ2teBa+pXcoiNON5lX3A+zzboRTof6emxAQLmxwdMJdyD7QLa2Hii6WnIk+sumIrv
	 5lUHwQzadlRsK6WpY3ISEItjnyJUgnfEFCXP3iUWwPOQZ5gcVyUOisq7NovrpgN+6f
	 15rCt9PrZTozUKWepxko1FTYVb7XQ+vaEvYQ5KStzJ60hXmk7Xm8i2RpZ527s/Bw6V
	 7EdJb1TgX8EhGRNwtk7FOdCykwtvLe+6i0BsaMLOPHpYvEBBuwJHoxOMcBp1WT6aKs
	 wLMRfKqcbgy7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52488C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694705432.21254.9797968040213944460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a91bd730c7ee8ded395bb0870aa7d577a8a5bd7a1b8bdb5a0f1be52b38fbfd3
Date: Fri, 28 Oct 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666947054
