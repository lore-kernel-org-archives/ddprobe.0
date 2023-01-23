Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41019630
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07A0C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674463325;
	bh=RSahuMjdpiEnT2YmF8X0+HV9mQ39j5TG4o/n91KOja8=;
	h=To:Subject:From:Date:From;
	b=FA0IhdTFzbVWEJ2Fw0EgLXb3zmUsy5dbzJeVwmOnevn71muB0vdYswpxZNlXFqgWS
	 ajFNeO6vd6GVlpErkS36LHfDMJdRswQHvA14X8BU8zukbpVeJwLFIgmLoAQ+la4THB
	 KHwsqcTEKOFOPZShjPEKMgY/GgihoVZVXg1atEFwBG5P0DUzwF3PP9YEhV9nzVTxVF
	 esyYuPIsCmYxjUKiWz4Bgz2YSdzxGHAShs9tKalmG0rpXyMCe6ACdURMjGSZ0NQ5Lw
	 weQIz95KCtTB7vwXv1ojAuK/dvVNMEXvLyYxZUO5jzvbplTWLfgdR82WjpjZkSch/E
	 26tICyMtFQ/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEFFC05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167446332576.26741.10347595519506032587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5fb27c6e29c69648bae7243f33f2f7bfdd5f688c1db4823276d0bb41d45ce17
Date: Mon, 23 Jan 2023 08:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674463325
