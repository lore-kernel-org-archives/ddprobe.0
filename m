Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1431EA40
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krX+EAN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B140C433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698036496;
	bh=6pVeQk+Sy/w9J+AuvbNud9pNEZbyHxIEivhNn4LepP4=;
	h=To:Subject:From:Date:From;
	b=krX+EAN++LLCU3nfPMnZ6sJqlirmBwvEJFtIuXjoJF7LufzCPiAxA7XxgPljBzQ2i
	 mlCk1iYz2KWm+T7a8uvjW5gczI1Umln1yUuXjvnxsaKtIRDvNxlGtLVunw0NUubsTE
	 y/zJ965ZyDYQlhlIfIgjPf2An2e5jJYaXSZ/ZQSu36J+entH2lOPjsQlsFEyuoI761
	 8B90vu1jljptfU8xCbbLxp9zlQ3bLpGA2KRhXFaJT5SIluAOztu4Ol9TC4RGpvcLDI
	 juKTFWeh4p+gXTi7+YQsW1YSfmDrOynqqoGjb/TaoLTc29MmuTY6o1Le0v2z9Nc7G2
	 10+s08239cw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61770C001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169803649638.25840.8255689980286134438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08211e81b4878c9c2888156f1ec17d7433b4134c7e8d89733285bdf3f67c3c1
Date: Mon, 23 Oct 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698036496
