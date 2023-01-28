Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4376FBB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E449FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674927785;
	bh=LojH8GSYSNfqPSNkDgagHiWaC126Fxo2Hlk9e5Q7ttk=;
	h=To:Subject:From:Date:From;
	b=hy5XLfJ3SIXjfWdWyoH0sRzX2F5hqVOS3bYsA3JyNmbYM44ArdfviSFQIRRIvL9+o
	 Rmf5hgF5KWnG+WR9kKkDrct1h0+ghpRdPKhRr2Y53XDX0qBMsaLNVh7Hir1NRy7DNS
	 GuDgx8Zg7k4YsMJx2xb+EZK49qBd6OGp0rDvMHb1ACfSZEHnbWNBapTe48hYlcm7CO
	 0YgEcboWYZYnmcDZ3VCTiiZidbzE9H1KzZfnJv/ZcYMUu55nM8PaBdUB5QsPnWfvsO
	 z6RIgnj0z2yuA4YN/ugL68Q9dfUM+DML8qVdiYgac6mHWretweF3HcHwrs4pzCZP01
	 Wej0Oq5+tGvNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C121EC27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167492778578.374.13914173722873888756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710e887f08c73796edafa42a65c810a4e349a733dcba3fe427954342767d4081
Date: Sat, 28 Jan 2023 17:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674927785
