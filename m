Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BFAA20
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 04:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F58C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 04:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682570465;
	bh=lG4Y/lsSiEqna6vXDoVlSUo6rV57AHMnHTGRdTRqTNE=;
	h=To:Subject:From:Date:From;
	b=LnhS2ztdhNlazqlCgd4rAofy/tnkJhrOX/34ExOTJtGZkh6oE4JUrzmXV8jkGJybO
	 3JVxfiJOMtmqLkAPqArYiFO9ZUkXM+yNzC6o0kBnXdTPYL9OPtjZH9U1flPkpNupJv
	 YVuoSoeKVnc6P4iy/3wZ6nDXi645zuamGkVL3BPKufSxY3e0c+Fh14eG067wp9D5yS
	 gOHwGPwnF1iaHG+FTngaeLFDQozurwRzS3XUC3a4cB6eYWWWzypAiPU+ZS8nWtMGSB
	 y80/rJyaUyU+lG06SjdwWwM4BywHkZREVN0wuMLzReVL2hJJpmayvu6nKwtXxDw0gG
	 jNOEZ8I7ZfWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF022C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 04:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168257046575.24085.827066208910277343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb9c5d5be47c021a6c2d7420d445bb33c17182d9255a46f387736ec4f7d864b
Date: Thu, 27 Apr 2023 04:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682570465
