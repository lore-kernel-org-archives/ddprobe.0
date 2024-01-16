Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E611979C1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuyII1Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B344C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705380496;
	bh=Suz1kMhlenW+ggWD8k5qZt9m6xMK14fiqVfmgTRoY0g=;
	h=To:Subject:From:Date:From;
	b=EuyII1Jdx19Eav3e61hq1h46juMUtF4Z5A90+7+IfXAE7YEWU2FTwErHKFI4zHqHw
	 q3mPYoybZzxvmXxFGzRpWP1OzVaxAtfJOp8Y/OhliuRvwJ8+0SSnTiYlPVim01BIRU
	 uGnuzCHSC5kDjjyYPymXhCHxiihZ7e7ms/vQe+3MF34lnTPBuFAwEz/wJf4Q/fs9wF
	 RNttM+ZhQ+ZJdblQaxBIcFks9MZolTfIvomwBIfCx6kduOjR+2bIH4Pg/g0iXzR1FW
	 xrEkD7xhptzBgLMmYiRychYg3UyYlzWeFnH86wvmv6iyhuA+0wDpJ9C/Nx2P5eW+yR
	 0ESatbMVL/lsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AA5C4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170538049638.9384.9711567090252177345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aaa3b128eb66efc1a5c2375312db1be6ff1622cb090726b753823b98c1ef18f
Date: Tue, 16 Jan 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705380496
