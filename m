Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E2B86E6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7174CC433B5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662492653;
	bh=wywQhDcg/Tqw0Ypd95KWsHKWxpXAzWCiQai8NkK8d/Q=;
	h=To:Subject:From:Date:From;
	b=Pcio3w2zKzoe+oC0JwTOX2P8wflYehf+j0RRy2HzZghxPwtjf5U3CY9O0829pO0l3
	 7i2KGjveKjsYebpvxYcCp1sXfTyZEk0LjB3JHVXXzFawuvJ0BUg1u1Uvrx+4ZfOTaX
	 /PjEErn8h5OlQOYDidaOo5nyydga5ZvHYc6IJ1RyV9phPV+mzwgQY2jXYbc3GRShzP
	 ykN4R5jM9EzTT3hr+lunR21nOwTDeoxl4FVv7ziTrAqX3i/Gc8lU8qI+4vI4sVXIUl
	 uRb+cCKwu/mZ5v5+DNSp//2n0wRZSofL/3x/zSW4H5nc1wy35lUu7OuJJsS0fKZEKm
	 /0HVtX5XvmQHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5639CECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249265334.8423.16317783964660800203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5a4dee44ceaaa33c7fa5b2efa17672a18710b6b88ab7093508e90ef1502454
Date: Tue, 06 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662492653
