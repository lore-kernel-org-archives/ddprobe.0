Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7603222
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5C0C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677878825;
	bh=7rbEi5hgvGBLKpGsV7mUo13O/g3EieMyy+xpAmnwGMc=;
	h=To:Subject:From:Date:From;
	b=ExWanhERw7KpevhWO1Q3ZXfTOqsTdOT9z2OetKZ4HiZ1V/dytEvIZEnfofqHhtQDP
	 s8PkgfYWGPJ1LAY02mRFKHvNsBY99Xgqmfs7ByZYeI/594Dzzt7dEVuOrYkB4n1yMv
	 sHNlJtyWhxjhvcNe6ZkZRi+dRRumL/ZiBhARU1bFfxYKBnD8TxLkwgQC1ItZbiR/TV
	 WCyNlPQLIeawncv/2PZHd+yyjECJPbVle8JLRgZzIZPGdrQXWuDwJXSyy7vMHjFv5j
	 tzhS9LWKgIEGhWVYVNeV7yNcoxSWCdwfKD7XR9L6qO4w9T9ShpnFmDihI6eY0wKkhi
	 mes2vUlEXGxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCDFC7EE30
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167787882577.12596.6921281386211040425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99d144258ecadea239fd694aba89a800b9dfb69dbe211f74faa34068dddaa48
Date: Fri, 03 Mar 2023 21:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677878825
