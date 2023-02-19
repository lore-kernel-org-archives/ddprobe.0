Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4387E2F4B
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 19:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C0AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 19:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676836085;
	bh=LVyRgw3/5Szj9DYJU75UYoDIxgFe2ZzDR69w/Q6C/Lo=;
	h=To:Subject:From:Date:From;
	b=uZqKrajKLPwi6rLsqEkdNykYNzpfiEjH+xwEI0mCu/+D1sNNYOBo7WfreGJnLAFSv
	 J0AP4h+B5eE/L/5p0i+qUEF83J/gzgC4pE+P1Y/lpASy4ZoI2Ibam6A1Dd7gqpfg2n
	 hQXb5lspI/duOkcKw+G/6dWyiSjjcIkxjvBFsfQYEZ3t1cZwz+yO3FP9f0AAD4cpkm
	 X4P9DY9bb3EzVdxq9WgoaoXldER3DNq5QzZKkuW87eDiX3Q5VqbJ/D5iCj6VGZWbOO
	 XNHs4DxmlSvBjYSaNc/mSQFGwONTtcQMLeM7TJnGjIFDtlScj3fxaOpZs0uuiX5pd1
	 41eEp4dOv5jdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C342CC636CC
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 19:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167683608579.19703.15187988912685927219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0ac942246c71093908fab974b142b27cc841dadbbfa9734306ba9538a9feb0
Date: Sun, 19 Feb 2023 19:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676836085
