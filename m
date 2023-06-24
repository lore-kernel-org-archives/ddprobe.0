Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B8C18D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1756C433C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687564988;
	bh=fse31QfsGPM52TxHhF/rx6lEwTuHseTH+O0At4244lQ=;
	h=To:Subject:From:Date:From;
	b=RD006qFSWF416NW3v0hYkdQzb6sy2jX07b0YzggZupN09vToDi/SRYwV+gM+tYRaM
	 r0oNczy5uuLTRoweLunk28/70uUps1e7Y8rc9IROlVjqz5JC52YaqWf/XL4krdW21H
	 Oq1Ol16AWKJVkFDTrOX5AiNNNYNV/4Sw+FakjCB4+UxlrALKUXCMfc8Hbz9PiKb6af
	 szxbYSJLSEzEWe6UMqtW07nk4f9u7VOyCVXNn2KAqJoZOjbSO96eQvm/5Gj3WzsmcX
	 B2bO37RC871VINtbX9tCQkXsBQfWg9BN1wPUwuTZ9f2b7+23PJpT4hmmC7EMYEpaMo
	 Pc0ynLTGlcBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28EDEB64D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168756498865.30467.5513210680413375796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411262fe72daa7474b1bd731b5a9225455cb2542372370801b040dab8fdbe418
Date: Sat, 24 Jun 2023 00:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687564988
