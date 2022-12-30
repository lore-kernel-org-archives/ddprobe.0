Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F3F2F55
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEC1C433F0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672441287;
	bh=2Yb5qd9cQFZY2tKaZxuhHcYtVq0jqSOJY8R8uwagF8w=;
	h=To:Subject:From:Date:From;
	b=kbc9/tGgvK7Pn7g/Pbx+OD1heqbDbkl0GAEQ4KBRKA1V1sVIEcQPNVkI2SjKPX2s9
	 /8xhBKxplGJ1nZvh6+BROeDk+grZkEYWa6UyZfX30OzAF9ufOzk9weCTBnsQpHbNBF
	 rUcboKjAVOfPie+HimyDeEohZvt9hrsmfygT4rWfSMPfd2qO7/BcDXWgoINWoihFu3
	 p7XPhywqcZUtPKfO4jaVU2U+3zLLRW4/j6qt0A89axcsCjftk405Y7jsgd9SjcBRzX
	 tprcSYrJ5Qjulw0/SlYdm8vMEnJCHAXk8G7jPfS2DZkffEkHY+Ex+hrn5wFxC5Aupp
	 PD9T6R0U3MXCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6553EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244128740.15778.13602620302473027179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b4c92d8849907b15e8e6367f608e872d690d7b367c9d7267beda25570a20cf
Date: Fri, 30 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672441287
