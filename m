Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D3D2CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E5A3C433F0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670705487;
	bh=+oN/w1lGq2jAiCBkI5p8HPGgY5mx/fbU93ZB/OTLKRY=;
	h=To:Subject:From:Date:From;
	b=J0xtoiiWqq28cXBKT/DyoTZP1msMYxm7pEEo2PHIyDJx5xCMi3ZBvL6yuEDUHxjbz
	 chlLka3FIZE+jpqVHqlTkF24o95GvmQ6RlZJNtt2Ckw2l88RL9lAEozzdIHXYA0K6+
	 VfYq2jc2/oM9UlTnVE4uYrMc1Wa2oSkEqI7XyIzbGS6bT14YfF1wX4ZKfiIYGdh1hZ
	 d4fhif39DMTgAR+c+tolLR2atwdOqPmYio80j3ffQMVGcRvDuf9kqi+5XEUmGR69Cp
	 VVPR1cHfg3O8cOsTBTQIL7HAAiNR7/t1hfwURy1pvG7Gug06V8kqmU+rXwVs0OHhi+
	 M/Bfhi0gZpZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B781C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070548739.28692.15825469671762069746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9868272ef6408eb54d61b3932c5eb0c6c971f5550ff4beec3ad0b693a85a2fef
Date: Sat, 10 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670705487
