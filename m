Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E890B1108
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95F4DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673849487;
	bh=2w407Zs5ni1XYxNkiyzK2GCswheVTttzCf1CxvwqBJc=;
	h=To:Subject:From:Date:From;
	b=fR7gVK+WmcVt9hEfq8Z7OBJ+h7UpFug4DWaJyXGqGEywbfOdyNs2K1r/6z35JwGEh
	 7GgEMXvPWgqybJmtKiX9qyJtWtXpfrpUWSBzL46a8DZpzo1t4iMJUxr72/30bz16Vf
	 BQVaS0DdvkvSkS0F67xcnMjcJkCDrJuNwjvdzA65z9cj63TTLVMHuc+542zoXe/lDw
	 uDjigrHooPBSlOzPzbN5HHgGcYJjzY9QsEaE1MWSS+VqUgEMdF3nBcmvTdrJ9u+nXv
	 6GbO32EB3LwsyQJ+mkcSVgM9u7ypVIiOB3JQoO6Op7SG6Vg2YAbqEDZ+n6cx3mqvlh
	 mlWYkluckfUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79DEDC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384948748.31121.4628346074390864572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b37d8b6f47b75591034baf76d9fe2fade48e1b8c201fa21c0bc9be539d0cbf1
Date: Mon, 16 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673849487
