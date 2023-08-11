Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6D5329D4
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7978C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691796188;
	bh=0TuIarYENvevWjUGt2oA7ItUJQ88ACUVuCDETdOX5tw=;
	h=To:Subject:From:Date:From;
	b=WRw+p5yilZ5jWEFSnCCzLbUPkNFXPsIHFmi4uvyrlgpIrD5PpOgYA4LQKD+YZrKki
	 kpgrNx4+UXHDhmQy/W+h4+YZKxdtUV/53wur4FG51MTNWH+SejKrVhX8I3xC6S1zOS
	 RRh+phpG8nq+RupFIi7yQ1dBBLH+vZpD3C1biXmgEA5KrLmORJvwUBp5M7SrpDQu5l
	 RGTuf0mxDTyqYf5MkkF0bMYm6mnEWec6PbP6qabBPeeQYqKrRaNxRE6Otu8qM7434T
	 qMuQepD/FV5Y04KoC7kudHtwRHn/mwR4WGO/Hb0jAASTg5bthP/9Rf+If+yKIeDMbt
	 BTH6RemOCbB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD9CC001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179618869.27142.5759077416937529314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320d920d1e7134171f81c10a914d02d6299d5652937c2616eda9f396364056f5
Date: Fri, 11 Aug 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691796188
