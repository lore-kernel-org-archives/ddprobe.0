Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB5A34CD7
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 17:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5E2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 17:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684256585;
	bh=hw2uHeSohh6tarTD2eJ+YFdvk6Mp01ubYVEAXgfGkw4=;
	h=To:Subject:From:Date:From;
	b=uYCGg4cVKFGuwpgpYMBQi+IolZaILvHfTEXyyiaAPENHw8cfO62NR+NsFLxeAjdsW
	 7K6IfGozLuwRN5cZ0LPamMTlwOK4PDixjAdH5Goev2t6Wkw9W7z8JtFwr7x2jFrL0D
	 L2X5256psfv5T8DymQ0itUJxo8QI5iJKvSV3se95vADPDVL4NsUhEVqxWVaVSkqILV
	 1MGFZxnVryNPK/IdsOP5WSg4PM4mkC053lR+6WSiKP7VGwDInwWt3cOI/BSmFBdL5h
	 HGgygYlYliVcllv+7YmB0ohT63zb0t7lQ1ASYxRjk4jkViwHJ4Hb1/LbsVwo1XTT0x
	 yLgc3q2s8sfig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFDFC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 17:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168425658575.3443.14239797457084733941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f92efa7e4beae275159ba3c17385f876d856d0a8624d19bd299c5a5aae86610
Date: Tue, 16 May 2023 17:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684256585
