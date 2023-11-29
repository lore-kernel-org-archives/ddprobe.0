Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0514C44383
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcyUmXXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76163C433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701233296;
	bh=AintgSg6RQsNJhnmVZhj3cF7xS6rJmusclOyGsOqOnA=;
	h=To:Subject:From:Date:From;
	b=fcyUmXXn8WEalMEeZMzrYAh+3V3riZsWLENl8BBeL1/GLluH4axg8yF2Ypr3zsA7S
	 DpMzVid1QFi5AuUnvTx5cLbfu10AG0xoInqJWlLD15h8AueDU08HDUq2ObEJi6hPuy
	 7ka1qaj13t71pzmuudtEXmkcUKmBeAokEVniakYiX+qAUm8tIXJUd2ugDQVBcx12EY
	 71t4Y8AdIfPI4HlstW4NrIygOhi2FGnym4EOJHXTpKyeJPhVCn1c15hXtjxXPlJ1ai
	 Kq28dxhrQUrBrpKK8jQqFkOHe7Mnij29eySgvPokCNxevdEOi3ttiXARJbPs8u6GpS
	 cxhfp8NososrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D80BC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170123329637.8737.6084986331209219703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bef83699b22c9cf9e97b508cb4704b1d8400e2416285e9fd1bcebbcd61601a3
Date: Wed, 29 Nov 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701233296
