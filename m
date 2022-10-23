Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91DC1369
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C361C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666527653;
	bh=ZZxb4G+Q8PQmlwQ2hgXmbF0FsL5c4flz2l2ls+k6XbQ=;
	h=To:Subject:From:Date:From;
	b=dzhibRnQWu6c6hZMY632EX4Z0sdqjf6G7QRmiKF8WXe950VU8cjAQv+XNzWUvnRM2
	 ciw52c+H4gzUVaPpz8pEJzrd0zXiAidzd9MuMr7Yrb+iit9awck2BrnkEepEhePFRk
	 qWZncankk+q0AXmswsUQ79qGR56ZWwBynpnNw7OBAyUhJlEt0K3xIMaj4fTawQvaHE
	 i+0x0arcQJ2IOLnyCLsCxJNpqRXcW8ADjlyAtdih92MvIFkQtK++7L9f2veMbEHaIM
	 UYCRnuSsV3pXlhtLN/JO11+mmfOTjRqRI3knbzGiAmZ1/ivJYvL0NjFnlHM/fi8TBR
	 UUNnSI2dycvSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560B5ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166652765332.5785.6889069607254883226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61d466a3f0a2b4b76bb67651b73209f65c984d6bce8f12a6dd48e3f2795b72e
Date: Sun, 23 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666527653
