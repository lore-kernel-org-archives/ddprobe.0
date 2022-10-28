Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA26023A3
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 688A8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666954254;
	bh=D89kc9v11PK02g+Zv0T++0D9lR9fgyWBt7ovl35Tr38=;
	h=To:Subject:From:Date:From;
	b=uvLJeb+6QHwAzoR5Opi4svizPTDnbTq1Qh4NyzHqjOyEZsmirmTKwMXPMtu5mgqNP
	 iGj4I+CG+16a3fDxiUb6Y+zGn6fc/dLkePg8SzwWAe8kG5Jsky0sAihKXf4ySw2HjX
	 +5SrLOmniwtLcUiAfByEoQfjfJGVi4i5biUi58iEKy5vyDc2bLPbTqioidhCa78qs5
	 GuFwG+ya3kHCTiHBbTNaXw+OfMuyLJ8hhwdSTf2YjDqLL1DmKlshzqMMlbhWnE9E/e
	 +qemVpxj/BJhQz0c0N3XY8Jn2UySm8KoqKavFSvkC5s5viiiSiO1QC9Os0DRmcAXiM
	 gRumOOEWo0WYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51024C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695425432.25149.10232217426113278738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99eb07a0ba59b61712695428148f44b8d73da11d8d2478d9a0f97fc08ec8af96
Date: Fri, 28 Oct 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666954254
