Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A834C952
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 15:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 083F2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 15:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679412486;
	bh=/ZE0yUisRDLSHbzjAchWSrVjPBHcbn45+YX5aqw5zo0=;
	h=To:Subject:From:Date:From;
	b=WiscOECP/fAW4ypXhdcMmWxHnH3cnZ7O0KyQm6DAW5cGEszF2NUr3fvEWfk+nKJSl
	 Vwl+vdgwAMNUXnAKLXeKKX2qrd3ZibW9Br+keKib2OTfAdnCLdQy0uMStlaDJeATnz
	 kNnW0M5ezqo7OoTfv/9L5TffI/3vRHjvdTb/WIMcwU2NCgxnMB6pbzBd97BJaQoToX
	 Tygwb9Ved2e7YU5ArvJR7q2DwjfLZEX7FqAyif0SJ7LlbwVck9ckTas+fUp3lGeW98
	 y0X5Gu2VCwoHZpr+SIxwUDcrsRJ8yiYD/BskY29JcwdwHvuk7kWxRLrWsyD80Xnwzr
	 EgPgcMB7JRVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D393EC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 15:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167941248584.24694.6493202161322089718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca9c8f0142a4e10c8b0fd1867a11a0b936583638fde8e4903db30b7bd457adf
Date: Tue, 21 Mar 2023 15:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679412485
