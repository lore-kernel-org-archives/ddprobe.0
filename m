Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E351B17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89C23C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673408487;
	bh=sV9xV67RfrLSAo2p9gVqognBH32pqWP2Mg/PsJSt9fM=;
	h=To:Subject:From:Date:From;
	b=exkxeWzOrcEge5+2vg3/1OcVz6sK/py8vuM+tWr92IgbcJlkSiNun7f+rFU+Me1GQ
	 QBoMEvVjR8ITiXXtyO5/C3BuBAtsXDMvgu2N0SkBLyKB4L8Nq2E/+OT2KKCZeNGoFZ
	 v58XgnH6reIaJInrh1FhmPNKlx7dXDaMA/JnS0z10rnAo9BoMRPBr27I9Y9W7kw+ra
	 SuQzZyP3yxFe3HoUnforHWa6NKDQWJ9vjBE8/d0P6LDAsctmq5FyCRv/ti9Y3rc9Xp
	 j9T1exN2bCkes8j2kxgGP+bPbytPzR4vzXJKTDY88YkNC0IVXadcjI5zhmS6X1/G6W
	 MSkKXAdZSW4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C0C0C54EBC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167340848743.4405.4513672970341128661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82057c6c5dde60367d80dc34b684f9024c7eb0c0786a15acc31f6725509272da
Date: Wed, 11 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673408487
