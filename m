Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D84C2DE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF08FC433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687338188;
	bh=M43dxrqI8/TyOeiXMjpyaJb6ecKk7ts6rUC63rcDDYw=;
	h=To:Subject:From:Date:From;
	b=sFqr8OmeE/ksAttEpXNZ449a5+YHvRspMj01Eg4FoFSAlmHUQ7Xs0e4d8ykzLjKEo
	 4DRx0wQlljd91EIr+KbVG5tYrnxyendiDFDvb+21wwr0ZvMKC9+zSYdXasrR+TxAif
	 avzkg4p4YuCmJPryLzqGTInrWPqzlJv4zr63i7sYRxIODjJrug1gum0X/GmnU+iyFd
	 FWsC00Mg4KUlL4c4ZugwUBHYlOMLBKFMmpmaKg6f3i6Uc+uILoqw5unjjFtqalvivT
	 X0jBMCqORlMgFlZ+0nciDLRC2NxuJlKlcXRVH2Hr8HmgclQQ/qcSutA4xSWZY96Adr
	 6xLBHj65/DbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA65DEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168733818874.19522.17466920734361846905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b282fd9befb7190f85fd30f15635a7373665bb2a34b24a525a107458fb61aab3
Date: Wed, 21 Jun 2023 09:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687338188
