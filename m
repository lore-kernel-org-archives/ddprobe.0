Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1BD7FC
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08B22C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680680226;
	bh=0KmKa1/3A2BgVF3kgh7lEIY9GtNl2CMLsPvGMi7pHyU=;
	h=To:Subject:From:Date:From;
	b=QWl7jQLa42vF3Q4++IiW0E0WYLLBIyiwzZtQEpH8xaEkYWen0Ew4qjXeNS/Rzpnkz
	 HC+V5+4Uc3Ol1PqwqSBlZNZRvrBcrCrTcDHn+D4E3/Y2Wl2FuXYvC4CW865CPlwDn/
	 BkCE+BULxwJBSLp/ROr2fWtX8nv7L0SnJpe1vNWN/f7TZxP51lPfZYhrX1OXQ6TiTN
	 K1f4Vct2A3H42klciQV6Ey4Z8oNx9/0V0BK9GXvKZCZKD3r16Mc1tSifjHuKXvNQKa
	 nG5N+aEb6koVKfLWu1jKSaz1kM39Fk6OL1mpV/O8+rwCt7dhWmTHedjib8KyyNJE9w
	 jYNxdDszbx7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD6C1C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168068022589.15809.889418508781019721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381538390d32dbb6b76a69be7e22e6b04364b640b3387a1d4db412af3737124f
Date: Wed, 05 Apr 2023 07:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680680225
