Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54592571
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77735C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670777487;
	bh=sk2ndqQVrtamEHeusjvN0H/3HfTs6o8PnLZn6yERTRk=;
	h=To:Subject:From:Date:From;
	b=rsT0VXSgBmoRgZcjO2RoQbX+gQHrSa1bA8y9mlS1XoXOZYPTgKyTmy4HAEsF7Mvgk
	 vjKI84P1QuYwpNk9/DAQYSYRr+H6BhyUHROMY2pgSIJZA0E49A1oz4LEOzR1ts4rF2
	 8EXPVKCeqHvMZwlBjdHA7ZLgH6NspZHvsVTxdW0mSZiR0hlv+E3+uodPj2/WCZ41RF
	 tYS6U1tfWW4drMkQ9j6HX4ta5EQtwaux+zgBmcWfDd8IUrLeQawT3L7Rv4pB0nU5h0
	 vIbMaTgR1P2/V3Q/BQEbOQprgxwvALC0CC4gRBJxeXLHvThJrND5jc7GDSniavCiZp
	 uP0mu93OCzvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D378C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077748737.23436.642374530352063609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab0e5e5dd9dd6bce78168dc627b60c84f74b48194a94a0c69deb840b7f14b15
Date: Sun, 11 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670777487
