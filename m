Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BADB17F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92ADDC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672692087;
	bh=cNQ7+tfFAL3WqDNFRbWzx7d7y4/Aj0dxso3k6ZIl/6o=;
	h=To:Subject:From:Date:From;
	b=sL/BkgU6qkQDbB0rG3jIf9x71k/x21M08emh89uckOV7E2MvaG1r6eEVy7jQauDJT
	 oornVhGPl1Qvj223G1w2521Jc4GZLY0vH6qezhlZb6Q+wOPDlqkPPUQruEwuQhYz/R
	 uqKS7SmadxA2g9zhxubjuYMZNvzv4u8JLEbVKtOE7kjzItOYOJ6W8ys7X50kr+6Liw
	 EOt+CgoRtWQVxbK3JfkyWGPDT51InbEhxf5HT8eMmp0QvX81L6o9W9IHQWJ74pFPt+
	 Svsu8oqvwOZmmBv+tO/JWlLpIvmKWBDGWy5iF07LkEONSJsIxK/7UASS8TmrkVeLLd
	 Oc4xy7qBRltxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73373C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269208743.21117.1228311402010717093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9413edbacbcf93668dc556d6069d2467204ac4722ea44772303919838136f56d
Date: Mon, 02 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672692087
