Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046B463A3
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5E6C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690969328;
	bh=yDmC0bdmvL5YJbUTz5xAp9oHGMEZY+U6Q6kzsMkxNcM=;
	h=To:Subject:From:Date:From;
	b=k47rsriUK7xQTw8aMOdsjU44yY07npFor2e51plgp1nxTrhED1rR+Nd21FqmWw4pY
	 Rz+7Nl+aLaOcGFn8LGNYiM9Qmq3y0ACz8YJB0KwjmEqCeJxcZjXVO4pQ2KQbaim2dm
	 r37xJ2zQ7cpRyzKDI1VZDxQ1P/s6HWC/67GD/MM8/yiWoIC41QZayHhgGoR3EadXJy
	 yHBUZSSQHDdX2vxJxZX1G+1Bhm7s/iFUGTh1LFtoDtU2cGvV0es/3k1c26Oh8AjNz0
	 IFFtqSXCfHCDxYZ8zD8xgqqDwUT4K/MBPz/thSLWraPMxbfO/8GUgWbEXN05VYlBlZ
	 LTi5ugF3tMxKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4246C001DE
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169096932872.16141.3872254722571730773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c2af79db9c583812483a1bfdf6a012481a0659ae1f1bebec30ca48cbc05fd5
Date: Wed, 02 Aug 2023 09:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690969328
