Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B51218AE0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34BFC433A0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686608105;
	bh=b0fyvSmXMJNJL3Wl3dN7XkFpLibWFV7zfD8wdxLdtcM=;
	h=To:Subject:From:Date:From;
	b=fPUrr3ThmBDnBAPCun93cQm8slUvkKztHcIGrYaXuQ5Lic5JU1Ohke1PY9/0ol0t5
	 jOz33N48Yt8PmDjcby9D6N92FbWHRdFppMeftdB639DC70OpuvcG96nEPx0fC6S6N6
	 GQfMTZlT8Qx3zYs/B2H+2FlBR1OxWuC4olDdQhMiBMmZldSN+vXw+/bQk/NsEpSg6E
	 MHAsbjvOSMPXa3gKHIWZllWVzxEN82i69jj4TlJjVt4CqDKXWRTfwZXY7FrdlV45pI
	 aqOSwWKLLnWV/tHKqqTVChz+skyRMlIcct6yj6+NT7JQZWaDm1U9ZVLRJBfBH9fc3G
	 tH9lsrx+Xdn8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7D2C7EE2F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 22:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168660810577.12709.9827677705351950592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892b0d828221fbeb1fac7ad8b4f86e65711d5f8e99bb9ed0a5f0a09b6724d0a8
Date: Mon, 12 Jun 2023 22:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686608105
