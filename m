Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC9C8F5D
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72409C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669651254;
	bh=N4mlTIbaMpBt3SHWvOh5bVSTL6P9JkcIXQ82q4U9rX8=;
	h=To:Subject:From:Date:From;
	b=WBqj/U6AHW/qGb/MR10woKO2C9sA4kHB6YAiN4erOqxIXBexAsXpQgJ7QFy9PFDbq
	 2IqNf8+SHsBYvm2VMS7LLeBOQR6oJE0H94UNRLQheaG99qhC/K/CuBzD0C8L60Sopl
	 e+bXK+pm362kgiOTAxgu4NRHoXuR4bADM3Y7QAulroL6Z1nn+oxzQg7fuf4zuN371v
	 KXWjhEQwmn5AztjGC2aZd459i0tgMM6ox/+3N4E2ngjk/4rzRATE0mphwXk/x9URYh
	 fz9vH/cCMBzlU7vg4k1yZ3YSO5mM4lpi3zUt4V/0lgKQTkJiqhamPhXu3QVOrPeg8H
	 3aK5mehp6h1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512DFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965125432.30059.11180515123348126514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd309d52c5669bfb4af24d9d06b2a8935e778f7fe611ddd914c0ef6dfdd2f3f1
Date: Mon, 28 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669651254
