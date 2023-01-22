Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEF436C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 02:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5240C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 02:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674354725;
	bh=Vm9BZNr4dVg4a2dvI6eQW1FcvVpefdAwpcNL82GCo8I=;
	h=To:Subject:From:Date:From;
	b=go/P4dopyHqPOhTI5nu9WHSODYl4HGydoJTspRPD9WS+eqBcRP4SmO8MCDX5M71uA
	 pAeffqb9RLKfwj1AfdXTS5zny2t9OQKiCZbXbwTCuNjYlaGOrFLpexZ5JXKtjo3C9r
	 KyzaWmTmAtyoKXeZSzeKbVRpbghBXOysSWKW6JaCVSO8w4MkkyYfhbV6kWVXqOtteD
	 G19t310BWRCMKNJ2BBHLtRVA1r3nxnnk8YLJHSafqwx5Qi9ZulZCdNSwVF8yq6YTN0
	 vq7wORxY+jy2WdgYBPOBwn6zezJPhFEUQdBgt5ktz070+ICRzYUKtm7srz+KWAdvEB
	 WgEE3X+EJH3Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB40AC25B50
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 02:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167435472572.28818.5079095469632553597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f77c5c25452c89c937c61732576e305e0c8538729d159a1d8e0798e11bac687
Date: Sun, 22 Jan 2023 02:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674354725
