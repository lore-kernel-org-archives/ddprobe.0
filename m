Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E70818
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 05:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F07C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 05:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683868505;
	bh=WlCx7ge+ysUImYL0OyUIgZZpMdueAzfsfPDmWf3uPzw=;
	h=To:Subject:From:Date:From;
	b=S2lNFn+g51/6mU26NWCT78MlvpMJWRP5aIQ18VsYVfIwtBkoLJxdSIoVtFCdklYbn
	 6vNoGikVi6sccs0NBy5dacSbCb5kj7/9AHhCirS/Al61+z4uHBWXpXp/EgJ6PMdANr
	 z2i+QoaN7t0zTjGxrXFrqgDqWmrQZ6G2wA82mu/0hNCn+y083kgf6BSpXWtWAlRRkf
	 UExMv5B9/dhjO/3BBTDgVOPdffa10aE9YnZKfgvFfPJy34mVoxH7QOUMD1KF1RXsj9
	 SEZMqkuyy2txsYEgIbFpjsu/V6DFxecD+jGqxOftpsC9ovKQLjbmIXB4iaXaU0Uzzk
	 IErQZ4bufh9eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C400AC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 05:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168386850577.10326.13288021810152285246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaf0faf4aa5804f498d091ca4b77dd1bda9ad71d5b8545d56bf55200e3ed819
Date: Fri, 12 May 2023 05:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683868505
