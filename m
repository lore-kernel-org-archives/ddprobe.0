Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77923239
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA74C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662408053;
	bh=L8yLCP1XYHeaNRaCY/Hc+afJaP42aX9IFsvl7coenao=;
	h=To:Subject:From:Date:From;
	b=gicUOREC9Nb6mY27+JBzcBpbpXhv2PTpqkz+QeOTk2nsY9pQ7lmjY/X3J5L4NvfKh
	 whHrG7/FnMB6lBgpstA3vSg+Eo/XXtZoJ4HcR0hrxh/WjSJYFkcyUmecHUgm9Kkdj4
	 yI49Tlap2PRO6vE9idQ9JWFFAZUZ/DqSOEUXch/p2KLpvphtKt7a9wJIi5aIyE3sUU
	 5BpNl4sT0gjZBQpp1HdCCCjzm+RSNUOi0gDtf/EBosU9cyLgmYkZJPQoeGe0BwllDQ
	 t+Pu7BDXHLEQznA7lCWvgbApmZJjSDermHWAD+XZY300aAbJFDD1WqvkZ+Uj9ewbnD
	 OTDqqM45dIRJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512C2ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166240805332.19610.3160793121029638471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9815ddcfd5ac7ce0a13a3f7100aa2023d25c7473de13913ec834a078a66fb0cd
Date: Mon, 05 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662408053
