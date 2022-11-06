Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69437F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B21C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667737854;
	bh=PLjFrVJ7HnU/sk5poLt9lcdwXZD2PSQNGnKQC5W9tTs=;
	h=To:Subject:From:Date:From;
	b=O2i7lEbj8J9lU2Cekpjua3eLmllabte8aRgTRTifoHqKIgAA17I1BggqPl8Wsxoa0
	 za85NIyeEVQrT8HuIAeoy6S+xkdxPGt2ZKrIYzVmJ7clAlmFTQjWDu0T4r6y53j2+X
	 z2dc7QcSu7XSUdGGx4izEcD+Hw/XaIzbmEsEv7bYY7wOGomG77ijYPVubE6LMJbHqI
	 fWGiZ9A5CJTcQUkxZPwu5SxsbEw+X7+1eekCGJl/TvoOxGQAk69hsqGoBwBrAX1vH3
	 EQVb/TjQe4vwdDmxd/1dh4/Is4iS6cxAEmVzw8cf3bxIyU2u6k9r82tZuF+l9vQV3m
	 CMxrNUcg3nAMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A82C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166773785435.17751.2886306924792132170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce80cbc9290531bfe0c44d95beec8c7584515a4e6fa37ed204dfbca05c62d63
Date: Sun, 06 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667737854
