Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7DC23A3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92F17C433F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673305287;
	bh=tFe17iecNL36KoyZLplMW2NSQgkTPL7UVPLmt5LSV7w=;
	h=To:Subject:From:Date:From;
	b=o8jMK7Aa6PB2oA/nBqJsbuzv/7uzrs3jLSEQRsyjMhlVqpIhPnmT7QQyWcsxMHhhb
	 KRSaV0F0inXOCHJvJLFwoQajAgaBQP+5hOSr7HNZMbb3bm0x90EHK60ZsS6zp5Bpi4
	 cUdaCH7v+gLCcOsbmkTXKVdf2dPCwhjioleRyWcXZ3J3hOqBw+v8la08pak/gWGLy7
	 m/XKoZ26bjUgmMlBsHNOgFChXejUB3y+/Ybc7Gy/CRjRGuGDyv2s3xdlh+O6mKwA02
	 k8kdXd6g8ZowifUrNxw58wMzWzS5WINGXSrn57x7VMo0AFRbwNyrkWKYpYrQOakoI3
	 5XGghfsHguvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78FFDC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167330528747.2633.7268505252291239700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbed8e2b44b73a5cc8cb2f4c17e1e4fe2624bf9edfbab161996bdb41e76906a
Date: Mon, 09 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673305287
