Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0CD7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 08:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC251C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 08:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683014766;
	bh=VsONAtEJS3h4S5gjTpsuvrC1ZgObdJZOXz1W+a5ZUQw=;
	h=To:Subject:From:Date:From;
	b=rDXRywKDl23hSjd7Tups0UIhOxr/rzb08DbvNvHcIwtsJ54Ul01Ng8comAqzCmicB
	 SRUNeTx5e2X+vwjc1HRR8j1AxykCqEtgl9530XOVBBhgxKkDLZJw/8ItKbLmLdtxKv
	 wDi+TmWjpAIv0Vi2PIfmOtw2rIMPWnI31NmDnTCptDs1NWgQ5LU3u4vUJDocX65nhM
	 9A6LIMxKWBpDBj+qphB6zVyn3oRTY36fIEPwrrzgNaAV4QATrPrqOX8OjkupjlDAxQ
	 fGIdQHqiv3KAeyqLOzG3mX/XrNkQ7wFYi6QGC99aGjzOchQrGlpYuYK8lvo5dopmD5
	 MQHxBK0GZfheA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF504C77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 08:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168301476582.17795.9007948073945000293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4cc592e4b87257ea52f262d52264c16e84486213dc5a3598f5b0803ddf0c019
Date: Tue, 02 May 2023 08:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683014765
