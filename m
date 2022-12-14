Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82D06121
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6FEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671017487;
	bh=8/uiGBrU7g7pWxL5rHZRsb/aEg+7cfjQ8SOUC3sfT/4=;
	h=To:Subject:From:Date:From;
	b=kM2f5THlHjxuGhZ4NBmxeq5oenzhbYjZ1wR2fVTciYq9wry2IObSvaiot8CVINXD3
	 h8MskLJB/vdlCj5FQYBIWZHSwu1MFY0N+Z0AWiPqfup6VlbIigGPtbR6yzok1EKnK5
	 Bj1ibExIrSlHRUtOkp/VLf/iyKOocFhyWpqSs7ZqwijcFGe90zgKfw1PuziszDvLD+
	 84Us82EqZwrX0smnccwgLMlrfewJphCTZ5DWnRy8DyFFPMswaLAgoB7ze6yd/UWiqW
	 AHWezYfTYkjJ1DgSf/gfv/S7sdkL7rj7IDW1TZSXvysySMFcnpLF5cZiPZfHZ2kAXO
	 bzx3kvKIsEXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682CFC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101748741.23336.18195458886800963250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13fce341a257776534910d322792aa533f9cfeb8c84a8dd11dadb4ddb76aa570
Date: Wed, 14 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671017487
