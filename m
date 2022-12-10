Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D3410F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85838C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670663487;
	bh=qzZtAfh20w6rnytXhIewTVndpvSMdtJ3eOUIsol3pFM=;
	h=To:Subject:From:Date:From;
	b=dtAVDYjV2u32aAkgWeVUKVUBKm4aKbZUPYypp1JZWGQA90RgxYi1osiOzsRCKfuSu
	 OP5ufzopxzv8CsIiPNpjsAad73fG7PncTGfNh+sc972V8+9KT7qXrnFpErYD2xxm8i
	 k8gzSnHThyqXJrnwwBUd0wrqDsuhBChNE8xmiSRMUZnT/UtDPWIv5zvh5qRnmvydCe
	 H3JQVvLQ67t9xiZrqIgyxY8+LW+czwgqIaRPCmE9wMDuX9g3/CGKQEZJdas+rqtlFi
	 FqAV6mBXje8aL/IsFbINhwTM5YaWGdrVHLxWIDdaBkpmXx1ShMz8pugqt8l5cPwLxE
	 e/4vGxsff9Lzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68129C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066348739.14307.15467721753526397512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32c0f3d298c70c05b22d1fe50a9e43d1638f3d17f643f6bfb253fd73cbf47b6
Date: Sat, 10 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670663487
