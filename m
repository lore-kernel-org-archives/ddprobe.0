Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648218F5D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1655C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687529588;
	bh=EXdy5M3mqWTGVGIrkCPa2VsjEZGBMOheOrTzUuO03Ok=;
	h=To:Subject:From:Date:From;
	b=sF+azDciHLmmj06bciSPqufj3enoAO/bC+0RkCD2nJHbwvtArqAWxpiVbYnBsyhX8
	 NSBSmM9zgj4w5C1CjyqS03tQZ8rjBaC42qEr5qqqM5SkeBrkpbOV5QBahuqfFOMzqd
	 +h+eomibWGm7nOcrc2W3MIzTzCe7adrJIW+Y6pGdyxsDfkLv4a0W9QgQVq6PpoEWT3
	 PumHzuNx2iEsC8AoUOVr3Vrhm3dDbPvHuKdkbj8eb9KHwtfN03hCIK7GU3y2ZBaeLQ
	 t+QD//ObVcHNjx7fkZrddrn+V63Rjz2n+ScPpsUwC1kl+TCsxWfzEmtF8BrC3B2Sv5
	 gn/TvRPC+abKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8508C001B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168752958873.10901.7568340629558013766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730c94015a8d22e01d7fb7b6102b054d49bd9b42c9781c2e9d565acdde15d231
Date: Fri, 23 Jun 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687529588
