Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D362323D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTfOjtqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0BDC433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697972296;
	bh=/Dsxz+8efn26KHDH192kuG/SjFhUzccG2SBfjmFMv08=;
	h=To:Subject:From:Date:From;
	b=fTfOjtqKZwflGY5tXIglsd9X5IOdSeBUCxa/sBS/vXjfwTxSRg8rrhlcrWtT4LtXH
	 0SmSEzm3DkeONNhpfrj0qRvJAeoHwT0nsOMNRAnw3iGUcJzVizG/+R/bUle1A1kY5a
	 xTGpCkUxZZbDEuv2Nq8iqm9u0FHVJZVGauNY+13e+Y7FZSCg4xlwJxOHshlEjd9L3y
	 9znlLOh1CB/Imm4falkl9QPx5wlxBBZWxX7BeS++VC2PQHhd+nC1jBOr5NjeEyL48r
	 1hiCLoYApeeyxPJT08w7MQIgxesOGUG0q1twQJlw3DcmnFxUAfr+eOOH7GFpd/PZmq
	 cSRqOFLZiAgpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79BEEC001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169797229646.26222.16944694721791270134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b910570626177727c99a0b9d32315f967f60eccdc87bace43534f73fc486d7
Date: Sun, 22 Oct 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697972296
