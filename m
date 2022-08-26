Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E038E2560
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE2CC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661500852;
	bh=M5HS5O9TZba4jMZ69LeHdqUynDDU+X4uzK+kvt6ACzY=;
	h=To:Subject:From:Date:From;
	b=Ad/Tt2K/Fu987wp6XiKqQxtv2fJAYZ78cNGSyelUwZlYyOV9HpT5Zgq/m6DiRq78c
	 h8Zr2WHPVMl7LXDBewrgLSdY5v52W5xHX+xH3ERrG2P9znauMrd6JgfIoVDWqydOeC
	 9fflBptMZ6ZUWP0qdyqDZknhplayplwZ8d4RdpBM2FGa55ZbHJCk1mVGvAsFEAOdyr
	 U4j35JHXN8km+C0fXGRi+IDajTSvKF7jqpNhyIO/t+Vw07606RDTcAD9HGUy/hIpfP
	 VlgYtC4JBFg91OFW23Nj6ACmUUc5/RQUjsoJXl3PoL7zIWnsun4dVqpeKUfGMk3KpA
	 aXeY7R/alQ1YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4B5ECAAD6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150085235.1925.6898902306951662875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0f66765b1d54a32077899a029d2110b2f173d438cd722f0f40323616943aff
Date: Fri, 26 Aug 2022 08:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661500852
