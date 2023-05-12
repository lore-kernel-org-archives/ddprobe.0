Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31531138F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 06:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E61C433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 06:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683874505;
	bh=PqPZU02wqJwWK6DpZFlfgR5VkIUjOFN9ceFCB9mHkao=;
	h=To:Subject:From:Date:From;
	b=cCgaHoe6bAUoRSWn90uEVXNrPfBECZefsF9Z6FI23d8WFEfERbmTn9vBqt/LVRNGr
	 NlsEQtYsj4h/+2aGBXAXFix2gy6a6aJ/+boc1tzJVeKh9EGsYFm9tetZFYUxuc11Fn
	 ddkg42oSd9fFHUDi2TRU09oJMSa8nAArzpqPDF9qRi77aQltIPnYy7wqcYkPW/9i2X
	 MqpG9APv0aG7XcM5/+aZXXDj/wjEbVt4gGyzFpEztjLwI5UKgqOXD11hMb37muyfT1
	 lY0Uir0Nr1xWXB/HE1aUjcdAzsMOQFrmoFAUNyGc8sI/ymFX9/k7goHnr60IbdAfld
	 Frd/HD+2h5VVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB672C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 06:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168387450575.26521.1794480740776514227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9cd6171561bf4cd366b150f827dc358d064c6e29d8efd433b61b33c7c1c923
Date: Fri, 12 May 2023 06:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683874505
