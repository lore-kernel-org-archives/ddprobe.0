Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC1C612F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD50C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667893854;
	bh=n4BpYvyXCr7nr9cz2HMdLAJ+dh6L+DMPnCwXzLhiz90=;
	h=To:Subject:From:Date:From;
	b=G8Cmslkbfr0darh7Pt38QITmuvOJmXGSt1F5s4/lJkfKbCxHPAVC/sv2rPeQipSrI
	 vhRe+3RZWE+arRoiW83beC00spohjbvM8b+loh6/URjkD6bLD2or2qKPp7H8PZbVjG
	 Ve8JEHhWGx3adUQD4yCdBMsUVXEazQSSz8vjGs7x9keJDo+DetpH3Pjr0M7E/21hnF
	 0DUhU+z7dTDH1ZyZGzKgfsrraS+kiw890Lj584Z6qgEwT+OcZXjXIr+bYHQpGfNpTj
	 IW7G66kCS16CSXlCDPZg0qJ8IxL8uV8Zyd/EWCIqHr5TMTGHLR6jdED1QLxJ2Fdmtz
	 oc0ZwLQwn947g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53375C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166789385433.28812.14551276138473772973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84dc34044a000e0619aedbf4350d594aa1a443d9a7b7be3de0212d35bfbb7d2
Date: Tue, 08 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667893854
