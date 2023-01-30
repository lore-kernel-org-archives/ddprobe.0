Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5412F36E
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E89F3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675055585;
	bh=VBd2+Z3Ozs93pWcVgKXxDibLLjKgLYqEw+paYjn6KhI=;
	h=To:Subject:From:Date:From;
	b=uXI4rTK0XTfmwVIQ2ObeTbeSIuRoiAXu80WhT0zMoRd4+f5IL3pn6/MpLDWOAAgu6
	 u2iMMnw+F4DRUCDqw1+8afT+0L/0L3nh+5x3AlpflgPdZ5//ttDBGMXwhMiyKWgQxR
	 MVhaLIGocB8TNQgVPkj9zKPweb/NngQOy1UwWKWyRaHsdqr347c3Naj0Pl7/oXv5Os
	 kCjTHBHXzwYvUaGfdGcLKkNCqBmRQfbEbt6T7hmEsGapMj5tVlFukHqhNZJHmz1wZz
	 0mMlcO778qnZaQfj0cjIQ9KlC1+azD49H+NlZ3rQToTdzv+5P2ChhsQDOkHdPQOKig
	 dXpw9og9OZxYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5ACDC54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167505558580.24670.15133194041872350177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0844714ca355c7f7d077c5b9055a2ada089be914505ea72cf92efd3f98e1e6d8
Date: Mon, 30 Jan 2023 05:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675055585
