Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FE27C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63577C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663663853;
	bh=ddDt2q6xBUquMAXzxDKzntvsw+KkZc2L59IZWSYsgb8=;
	h=To:Subject:From:Date:From;
	b=hYUGS+I31NIK4QUQkdQFVP9MgwZkI4lpuMcBVVwI3rMDQ5L4DnBHWX6lh5FG6MIVB
	 xVY2cW7QfedyfwT5sS83yGr4x5DEtf6DIWB1ouRJMJTfyS5eGj05KX5JnQ7Fd1PnSx
	 pnl8qZb1V7OlYYIVE7Z0NJSW7NOSzeSVu/ELrGSB8beO1LK39QtWCv6kn4yMW++SZW
	 8x9DI53lPKpjlDK5a1HJ6qyE/LClEyqvvsiIVnIIcpauG41aB7mFgCiMdORpUmN+gm
	 eVp/2FDeWkDCk4yNwewekA772MrdyxUOjidWqdM9OLmOS8pLhFX9P4j+QAqh0FUiga
	 enTOMCbS7Exig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50215C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366385332.32102.6689916502502797174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70940802ccf574161e5fb4c21fda47034227e199dcd420321abaf5497081f568
Date: Tue, 20 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663663853
