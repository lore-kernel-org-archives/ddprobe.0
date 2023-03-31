Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0628F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 22:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6ECC433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 22:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680301385;
	bh=XDZGuADe5SQ5r1mK3/Tpq9Bza18LLAhgZG9Lmrm1AKU=;
	h=To:Subject:From:Date:From;
	b=TrjZv8pijUslK8BhgsmWYEOrsaJrMmZcHcJmUMTrDLOjz5lhWbGAVhQUj/+QRVII+
	 PtvQqqsfzaUC4Fa2NrTjtLRfdd+6/M77puXmQsT7f6Vlq3/kzPXeXNzirv5ZRdVVFb
	 M8940RWKYt19/CeCpCld6uJWPTgA4fdWRPGzhbTI/iYnzhrFF7W1/3HZWYdAtqTWhP
	 uTLqvWepTKtJkP0fnEhz2zpP4JRa6mqx1L0c/fk9mcGTDpZ7crso8Kk2/aSVMunB4Z
	 +XN+a4kbkzwITpGjXE0GrmDm50jt2y3qr1JX8xEbJNEsbk+8v5LGXYFnEQ5zn11KWE
	 OXBEcxjpSz4ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCA3C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 22:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168030138575.2000.14527603768209852772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76488dd38551bcf61a433cad6aad1a867d93341b2bc58a0dd01435a27e5391b
Date: Fri, 31 Mar 2023 22:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680301385
