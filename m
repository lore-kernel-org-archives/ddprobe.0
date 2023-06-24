Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F84E6AA8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D118FC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687641788;
	bh=kpr6EnqvOfumzi8nWsNRvm3glG85/YU8aoiam65TbPM=;
	h=To:Subject:From:Date:From;
	b=gNn9UUDD6VLPqT/CdSxKp8JFjI8ch/hPwvaHWtUU5c+5uyb7S0IjYnHEB+wdPVEfp
	 54kC1akw1A1ZySPRsNo56lyeBd5RlVy3Hzi14vrphXGOFLqr5cQ6MmHCwQzE1cDNxo
	 MV5yI8t/ybO2ofd4zpH+bc1cSTOvWFIHwcHp8EdTOyVA7bjpTFMlgVpPekJ8056xT/
	 MOaLl5hPKhB6eI4fjwWLfGjxNwI3THtAY5gbz3hlylXrQdISsPncoPQ00qNv13qO0Y
	 4L0IgVK+s+aU8s/ABvxvna+fYci/wN5TeDj7DH+wmwg2qvgaslUsKHhwH41fxhm35w
	 fAlAqnXhxW92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD871EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764178867.23291.3781364437133811561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d262a8bcdefde1614a64d0e0a99ae7309c65396c1e0284116eebf9c975f26103
Date: Sat, 24 Jun 2023 21:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687641788
