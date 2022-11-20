Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE23370
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A00CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668919854;
	bh=h1W6dN8e3CicjOmLCJGtzcgUacS3guLsMiWdazFug88=;
	h=To:Subject:From:Date:From;
	b=F157antpmywlbgUFFgjdVR5XWiehVqLu+Hq8iWfbPEqJDthcTheqm1jqKSmVj3CnM
	 ERKak326C9P2Q139RtWWiG1f9qK9FHROm+bUvkL63A+BzF+GmG+JzSFd1mS1D5cliw
	 rprXlgdUK5qc2gyPLHtHufVNpKGhRQYj6hZm/yMiu19ctAHfyXqmfd3O1vJep3yFjt
	 pEOCJtYKS7prjSWfxvoNJPvd0KYPgtFqOFUDKT2ux+8pubQ7wFD7BqZMb8bJ9ubFpB
	 OPHk9wfM5W14/mw8jeQojQqcElMQP695mF8H2KJPh2mia1tfXmxTQqBAiUEtI33xgy
	 t9B3rZM9dRQvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A559C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891985434.5721.11858148347864259843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1f20641137c5bc31c16ae53ce9cc53ebb2d4890ccdbdcb70ce7f47835bcc15
Date: Sun, 20 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668919854
