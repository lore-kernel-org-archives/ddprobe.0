Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8E820E4
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABCDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679832725;
	bh=vaRQs6HQNlkPgftabZN/qjmNgMZGYvMiUx7xrdFYdwQ=;
	h=To:Subject:From:Date:From;
	b=KaPrJLimcC3tNWExrVJWNU7tzAdGQYSDBXXhA9s76dX4FeoZD3f7bBvA8GXwsYFfo
	 5qmEmwjmp0BtSuO91fKubjf+F7vbW8ShmbRFlS1rZ5NrvjaaGNg2YoHsW7GhXGTF3X
	 yhHi22SfUBRbcjdIIhvh/PBpSmhyJF0ZLRZu8bKRSwm8UfbC/S7sRboHj99cOMHE1J
	 EH987+4jyT6vxvPGRlvcMchGVpd+POGKwqgu13k0tKl4MtgDxEwrfUcTM6arASRr9i
	 7gObuZ9MFtLoaksLbc73zV8WLZKOsLCk75srNY+Ja6oPv0nVXOCC4pDrThEVgUU8GB
	 u6ghXzDWwfTcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECB6C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167983272577.22946.16632607259927634542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c0b649a5ff5d531b6339f7554094ba7d59bc4d1d110d462aecc82008453235
Date: Sun, 26 Mar 2023 12:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679832725
