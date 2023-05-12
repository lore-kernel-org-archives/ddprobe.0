Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511AB22601
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1664C4339B
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683935165;
	bh=NQDYHZkMFekpIbA4LKgqz/So+W0XmvjbyaIloXxzRwg=;
	h=To:Subject:From:Date:From;
	b=PHFPMhaQeNnQ8bAdaknXVzHu3R8HUBYCGdPvku6zIkNTf+KHWzyYdI9F1IUnDm/ps
	 U2tKeepPeePiEuR2cEG3ibW0VGL3nS1yrnM0+I+ID986d6uPep7tMAzBMNXBNUE8+C
	 vQH6zJdq+gFEeeCvpNt/XtfCLXkXv5ilto/O/KgnoVewCZZgxeNCDLrW/qhFtDKA7E
	 BUdH22tAYL1kvE+xQP52FW7hXrHmZREFpVFcs+KV44XwjzbhD6SUQXiYvDivs8IdXM
	 WglkCRZrwl+IrLakA6jUw6Z8OrwE7kl6nZCmCCfksZMO45KGkEGeqbBwdc8gWXBhRV
	 xi+O1TrD3oo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE969C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168393516577.6979.12447471443655914516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de74a741d020b195e5732ef3b5117cf863685c525acbc4259bd78c308c9209f0
Date: Fri, 12 May 2023 23:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683935165
