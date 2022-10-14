Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E7E2F3F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5ECC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665791453;
	bh=iCYuUqEKSp7cIWGr9m6YIzk3X82S4vhWj/NmIFElOho=;
	h=To:Subject:From:Date:From;
	b=nPM2Q2qVrdpQCtYRxP3jsIVaOLdxnMUNszzJEuL6/g7P1wnjOB7B2vVocTnk9TxQq
	 liSKGR4j8DSrjwCbIqHEWERl/GjZMSwW7r0uIPBQQQabbdUuxi93rN/yTj+rYOHPcy
	 fX/3M2xx20lCRlC2lotvoKBncUzNz777hsFV2mSY1cjf0S4XosaT9masY2Px1jUwCA
	 +RFY5BMH6yS13Wvqo2Uv7i0U/Fm10Nr6k/Xc4DfShvbZUHZ2WJNZzhjvxo185Ab0hI
	 znKQ13u5CWP3FsVP+g5/V0eWfCVymomVUx35jhdWG/vp7C/DRORwTR53NEyfzrYULj
	 yaOYzRJZ/o1og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FDCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579145332.9524.108985228242560201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6c89f983cbd638f66e3d9e8edd5a2ee2e5ab2b1f767013786e34f59d9a4e1d
Date: Fri, 14 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665791453
