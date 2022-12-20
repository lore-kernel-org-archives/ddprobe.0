Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40E82CA6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 969A9C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671565287;
	bh=us4sl3m2pdaLtzLAWJKyTdvpWD1T9GWx8vMK2ZdvCJE=;
	h=To:Subject:From:Date:From;
	b=DFtsTuvWxPM22wcIvLG7iXMfX/btzx/SDTXLmcWplRL80bRP7qJiAEJvwGQat6nsG
	 ft2zMk4YuMUnLH5XGkHolrew/u/0ztremzPVgiUwT7je+XUiyhjXK7Vs+DX5yS0YPL
	 4BC/CeItMyzzseP8NFpR7W4rBsb1cj0zF8CuRzAt1gWT4TudLt54B4OWkrVUMrAtry
	 X768FYN7BlVA0BMzSF1GnJHd1q9h8KCHiS8GgD+GOE8yV2Xeh4dvKlfUapgiRhxA3S
	 Yfpaz+1yn+sWlLxNz5MhwgnR+VDmk3jCbZmrfzFW4AanexT8I7wydmK+SpJXFy2VAV
	 X1TcRxP7bIF0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75E8FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156528747.25613.17967484621923146878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6d2d1486d584aa12a76a2570d4119167dd16699cdf40096efd894f15d37488
Date: Tue, 20 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671565287
