Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02EA13AC6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86EFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686934748;
	bh=i6LfAbG2qW0z8jWx6QwJjA2Sr8mttUaKzCE8LdluSdU=;
	h=To:Subject:From:Date:From;
	b=gpuYCTrhJnPGPbzry6LOYcE5spkf+EAUXV1VqQOcK0l7gWO+FgjqAEc/NVpKrx7oy
	 +uGxEwgywEhD5/Hmw9h7SyhxkcYCJGGqCaIYLAoi1UqOTxdKUbwtL0uTEDpvsRmUPd
	 4yyPjBeIh3V97dKPjUORIbXo5QTGZGv9w3NknUV/YbbFrdZApEt43KKVGFemHlWxqh
	 dWZwTcLGFhuAOjG7kpSRAab+p/crfdhtFHxQlovkyExYXs0WuXn33g8GXDcBHLD/Ke
	 4INMIJ9363hLlgGLK60w0g49RykFqUcaMpE+nVnUrHMdYCjg/eBpMHvrWX80xaEVEM
	 2K8nePfmmv07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACD5EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693474868.7352.7116995058105875420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc38b65ad1274e887fea49936a21f4cd05c3571940cc51269028cb208fb58b6e
Date: Fri, 16 Jun 2023 16:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686934748
