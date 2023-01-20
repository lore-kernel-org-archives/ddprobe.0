Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CA2256E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9EDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674254525;
	bh=33YxO3QzCigibW8gSL5v7r8lDfE/qJFTk8J9aa6zI+Q=;
	h=To:Subject:From:Date:From;
	b=RjV/JHIDIH+w2C3yxEt3noZXhqaSYH7akmuPn9tsPisGFFl2gh73rJxeaf+UfHCWp
	 M1EvmJCQj6emVCyWv9GHzKgKNPn86hZyiKNdJ1ZB3QwZRSNxl7FzrEEjaQ8pIndVTY
	 PiIDUZnuMbZIN7lIXc2D+ApoSV+I12Gtmelzc9LF7Z+xXX8m6spcJo/QL5PiC86Tdp
	 DAlfhCsrWLrzLOP28wenaUjComkkuycw/tusXty+J6qU8WRYDRSqZZXVgX+pNDoqSc
	 GeFhkYfhvzxkjxLMVrAEPKYSjCgONUgo2obPs6NuUzUMMBkx2G08AAO26+psxqDQCn
	 ij5kLzl6PWbDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5307C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425452573.1793.4029555471343683448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6a8f1f94d22d4ed40d4e0b7ae4961c82efabe513af6784a8d7466ce9b9e634
Date: Fri, 20 Jan 2023 22:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674254525
