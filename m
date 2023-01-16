Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C361108
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB0AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673847087;
	bh=QuMeOsvKh/phypWjuRripsF50q9f96nazsHovRkMzOM=;
	h=To:Subject:From:Date:From;
	b=Aq3lAymlMy3fIyy2cHOZll5tZmtGMceAp6tFhpCyrTP0ZLMdkqEol5b8cjsAmZfmp
	 sghMEOdmFYiNExTa6XmnVC72vp2I4EHkgrV1/KRAOzmp2KHglxFkpLBScHCchm0vfW
	 EqE7pgvD8EyuU1AOVjk/5XwWrVmUBczPzC2cBnlV94ItjujIIe60Gdx7VXQSBd8AgQ
	 Y9ACrl6VvHw+0Dq5uOt4LYwSlahmyP9qNjugtbTtkya+nOeLzsUqehLdH5t2+/23Q5
	 xy1C4cgsLHbX6mKRmfOQaCQKw0CtKPxhlnJNEb9CuRlvJ4HOLhPsNq6OmZKXU3p6Qi
	 vaIAFzfi5mkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80474C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384708748.32163.18375794025435913336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be9bfd927c528890c8a98e612bf48d13692061da2deda935be53b4beac964a8
Date: Mon, 16 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673847087
