Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A77F2CA4
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 14:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8BAC433C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691592188;
	bh=qzhXlwnqdFL2k/GGT2mzOLY6/vD87xL9ML9nhAowc4Y=;
	h=To:Subject:From:Date:From;
	b=Wegx+8/AbtHNsNWlD2L7hsWttyFqGgiEuHdQBc6Md8yZZb7r/3VsXu2zkDUFk50ie
	 d4oAi+CtFNe4NNOC9sxXV/JBc06Q6uAA7ZJ5w7JTPsTlbI0+Amn96olPQJ63rmIQjp
	 3H9nQ1bPOTp+AsUNZ0tMoCxs579GPSOiycW5YmacHdvAz6u5Q1SQ4q3YX8xByLzgIo
	 C4CN54JJDMFoFLuHLTnEgOjXDWh4TTGTLkb7mnsylkbcKzHL8Oys3ctmgZe0LCfCFt
	 GX6apoTWtJBVv+P9qQdF9VEYT4qA2c2PgECnUVpmUynX/HyE1XZNVuUeH7Sz0ZICvA
	 REJJOnLjRv9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE569C04A6A
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 14:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169159218870.1751.16619303114771699474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ede685d5eb6a255bce79cd789807964176e076a41feb29bafbe465aeda35f9
Date: Wed, 09 Aug 2023 14:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691592188
