Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAD3EB0F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E3CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672939287;
	bh=qCzV7r4xhKxsrTkVPkD1Wio/NOMoc+LAVRAv0rvpzNU=;
	h=To:Subject:From:Date:From;
	b=kOjlZGbpgkV/mt8ZWR+UgPyN+xZQqSRZ5s4pJMjffNmgiqPPMRbKVqBXieXTHJyxK
	 7KDHLlXcMN55CJf9s0+XcIaJPTP9GFgsYo17jPLRuPo8YVGS0tXBWewdnI6BwbCaZi
	 Q+WDcR8i/yb9R2MmedmJzmAHKRIqvDZOlK+0NTYh9scNkRZXMG1j0cL/wbytAsF361
	 pGMrH6/DSSR9nAvCUV7374ZXFtrKjHh7W1pQl8BP94dRboRl2KZDnA9fgGxcli3rDo
	 /X0+h5oK9qGk/JnCGIngJtm6ZvQo81UhCk/IQ5lBx/UR5ECpqhCr3FQ8LqdyqSDA56
	 XUZtawhHSk9sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68468C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293928741.21053.1195622196791921961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ddbdaca86debb3569f156b4eecf34ae033c85bb3ba449b8c34864322fb4d4a
Date: Thu, 05 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672939287
