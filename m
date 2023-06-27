Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEAD17FE5
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC232C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687878188;
	bh=C+bdVTYifXoc1CBTcDGgWcMzvb/AewIeyEqH/+odcBw=;
	h=To:Subject:From:Date:From;
	b=pLdYrUZVV15guqkVdaF9q4mK+cma1UfXgWIjq29hB6hRwFGBqBH2HEfbZD+sLhQ/D
	 96vb3RtgrCkHb2R/gaUwuM9xrfkWX6ROj6zXejsEYivfK2Ce+rJmBvEhJKZDSmHyy1
	 hqZnp3FnRbd3mGr1AgVwboSaPQsKrpb3kXJB+ZrR06rKRVLH49dYTI2EiWswzOoSz4
	 G0eebeex8+swX2KwWF+WxXmfG3MBCEj1yLrbD4yXt0Ssjrpbb5p981yfPLTbkIbZB8
	 LgHIgS84dRHHk+2zpm+o853+WDaChTg1+7iysC7V1wLw0L+DxNVsWNK/biCo1KTyrm
	 1wxYDhKVaez+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2717EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787818872.21783.10729729390211528635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ea953f4c11b1d7d9dc76e1140560f9b6592882a43ba24de695ff84a59d8009
Date: Tue, 27 Jun 2023 15:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687878188
