Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A3D107BA
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8554AC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672962087;
	bh=zjrNYnDexDKW0G743tVEr9pD4KjoLKhATJ1A8WAfPL8=;
	h=To:Subject:From:Date:From;
	b=rdoMoiq1Df/b8F+Kt07ftiPvkU6DdH4vliVijhRTX7kcwUpfLGvuQGCo9v8+5jk7g
	 BeoPUUwcNSYZgLJLT4tv7p6oabYVhxekeYceu1T3oOyUYvTXu6+qBiibkktmaNqXcS
	 ue0+miuvVdapP+jBb/SjkBsiJIQjXj5dAyoZaESLpTeVV3cZd/bGFDUQ3TM6xgBRyC
	 BANwiH58PhPLu0MoIAWu1aUlkzW1toICAkj0AySP7xNs3cZsz+rZ8YhVS5iwc0xfum
	 vErwOlRUjJnpq/Vxqlroy+uhX1MwNhSbIzFp4j7T41CfLF9rqz4xLKY6qUmAzUzcQj
	 AG7ejAciuPBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A07FC3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296208742.1562.10062744628233088391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8ccad88c99e3c2576bdf8a2887eaf32f64b4d016427d675cac1cbe66ecaaed
Date: Thu, 05 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672962087
