Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4D27C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 04:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E219EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 04:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682309525;
	bh=cKrTDmL7VWcI4/GbeNl7MXQLmZGWO/bhVFsgHf27OfU=;
	h=To:Subject:From:Date:From;
	b=EdyNrtuZGEwB+u8ZjukqCRYc086fEtwTzbkUDuOBK290Jl+dxEMp6GC7H2NcW7/RA
	 R64daCoMfXoIu6UY/vn8bSTXclp3h3ntk8xs2xItk6lEr07bLUwrp6j6pv97VUenun
	 sxUBcncj15Dz2TnLzEZoZVm7wGCtkpmTOEDazDu/Nm7Wjn2GdUi7nTdokwKE0LARBW
	 hlIlxODevZZXGlfEfIZeqmsgrVbcM54gK17AiVkuRU2/SfZe731LIZvNmuK+/pAsmA
	 nefnQOo3bis5xHT8BHaGwvtn+Yu9tNQ3Fj/ok9RhhbIK4v7yNH3xV2BZNRukmBs3QM
	 ulhOGZE+BEvJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13ADC7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 04:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168230952578.6474.15654767597601758896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02e8cde080e3cc67d3fd063bae7ba09b05dab6bf37f29ee2a026b9bc0373ef4
Date: Mon, 24 Apr 2023 04:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682309525
