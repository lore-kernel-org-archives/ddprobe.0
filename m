Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30DD28E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAAFC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669551054;
	bh=V2FQ2BS4x66ObUpNKo0sImA8eiq5DVpz5t5CK7f3vE0=;
	h=To:Subject:From:Date:From;
	b=rM9MMXoW3pNQNW2DSf0PNyc/KPWtO7BxlNPzZ9qWjBN0O66BKV0jrTm+EoWIVsl7v
	 /jnw70RkMAIULdRUOcD7DQh6Tb0SSNpBW31+JAXz7V3Az+ff0bpNDCT4Tzj/JEHitA
	 wAlRtRgnWMme1iELOP/8VDQQhOKKsDdUMHTqEv+fLBuSJb98i/6+7hdb/ajmrI2m9b
	 PVZKRLFQHXFv992qnPYbqtRIAgpr4pgntnJVwnSaGUsy70bVNkjNDHVyJOwxZc4Fec
	 BSrlMP0ylR5QetGZHcfC2R9ai8Zl/fhMM+FEb6XVAgLAq+zCzwICkCmqzsLlLH0OSO
	 fEzXjuGSONrrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5302FC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955105431.4398.16757012609875633163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ecd411b8f7bc2c021ead2d45c497a4c7e01937a7789e03be36d3b9aea090ff
Date: Sun, 27 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669551054
