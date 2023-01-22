Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5B0138D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E252CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674405125;
	bh=qcuNkyxiK0WIcl2KMYmpG4XTffhp/SQ6kFkBKfPxKV0=;
	h=To:Subject:From:Date:From;
	b=DBwGAuwqXgbJ/IOYMSv8Fi9rirWSH8z2Adeg4rRfveFsr7O9QzVARZSvChBthrNUq
	 0lnkaaxk0p1D1+xdysuYgrT4dY1stRcISislhFxoHYrxcnM5UfITVqPy1PDO5xcrQL
	 QHbz8m3cxphPm9AcEtZZ+GNpKmJJO3w8YuV3+z6I93/F22uUL4ilv/sO+N2D6fPjge
	 WdVAtUBQlB7too2VSZ63Kr2f67zLMuBn4ScyXVmHcU9AMtD83MqLJq5CbEZshT8g1m
	 k5Pt0wBiOEBKr/W7RUg9TQbzvcoLN1nw/1kP5d0o/6J2Z0hcsQCctbRxl4cdCVISwx
	 xmmeEDzklzDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4574C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 16:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167440512577.23762.1218907995817529884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3682cd07251e71adeeef749572be6d6c382e2b2848c4e9b7b1d0498b6c0926d1
Date: Sun, 22 Jan 2023 16:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674405125
