Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5CEBA25
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729F5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666854054;
	bh=K3AcHxmkyO3pTSwQK2mweLQjCh2C8xUp6HFU3jzcH+0=;
	h=To:Subject:From:Date:From;
	b=bSmnOkZD5q5Yt4AQ2ELvFhRGeihzCUN0urfygbP7jayM8yumePSUnpvz0NkMsN4PH
	 z3bRLKpJJB9Pbl+97MscOCaLH+CUxgRAznX9ooap6qVNpucE1cfBbLBQlB2P5QAUE3
	 JTL+Q2Qy+I9563PnBw0mV85P8+mNhyZfjyY5XMUhB/JHh+59KoKkBCi+OtDu62U2qv
	 bB9v1iFQOI9R1YjVhqzX8tMz8p4dpgoOP91stZD3zGDH4nkUzVTewAnrOCTkS7NsVY
	 U3FKLx+f5fKtSMXz10n2HsdcUo9zGALV8wGbSWbFFUORL9gS6+ZKD7NjWtxq0rsZCp
	 2pT16q2kIok6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C58FA373D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166685405434.4060.294182813873797697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5d7d4f4099a234803962aa4c6ddf6b775291a156754ff2d79224d17b241e39
Date: Thu, 27 Oct 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666854054
