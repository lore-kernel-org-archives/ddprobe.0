Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7D0DDC2
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 23:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6859C433CA
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 23:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693956248;
	bh=UAQqS8/DWq/TiYd+wdIPhqUVFdUAuumG+lS9o85o6Sg=;
	h=To:Subject:From:Date:From;
	b=srDEeCxYm0okI7ZCSFzYWpsBtg7YCH8MD2cDXxhr7Lv9yuFJZK/vBSKQY2KgSxAdL
	 Sryqw9R9j0ZktWiQqE3Ipw37ipqrXdA5e0kB2Y/JIi2r7+sgBdpBV39zKSKQUUdoOi
	 bO3VMAQzK+wnzrTtCl6DKQabbUpW+41itC+EL0jwBmLeDaJt60z6k/1Zu7csl1zVFT
	 XjDSkLvVkoXE6R9hsJAJJDFN+YjaNkAXHo0wOwYqwEOMlNhc93JyB1gmWh+dae3Hp8
	 1vUcwaCAmUs60+CWQTqvMBj7hptQD6wiV84cQKE6iljSeXiIDP1DZAY5IQNeUe6vUF
	 rmz+PO/UElRrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EB9CCF9E4
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 23:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169395624866.32130.6517577028141948688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8a2fb8408d404ed990aef20aed40c26fc73f00420f7adc6a90c82108af7d37
Date: Tue, 05 Sep 2023 23:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693956248
