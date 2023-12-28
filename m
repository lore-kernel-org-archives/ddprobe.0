Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DAC10A01
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMfq1G3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8873CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703800696;
	bh=0rgy5xV0+yPKYwf0kwwyuE6uMh1LRLrnfmViSJHh5jg=;
	h=To:Subject:From:Date:From;
	b=uMfq1G3Y6XeMJSlv8cMZqdAAWPiglO9NK+U3XWVr4ZaxdzW19vK3VDeF4usvfrxKi
	 uGb0O+SkiQ79fAOOrGKa4/0NL90Ykwq22drZwUQW+NBCKw2C6PyQDSrHUD6Fr1WLaL
	 /OEDikUwtAmg1VUEGvn3nF8KwXaAAX8wDR3UUtqtDXj+HGdUwrICtwmLFzJ5BKemDZ
	 Kwvov3YUKTEP9vcokFARHqnxij/otxNLwSKQrmTlpOotTFzb69+F4zR6AVp0k0Mbvh
	 zewDtGAidvI+Czk3txfo5x7ghydHSS1KiKjHWxHKfVJ6M//ZZksF7FlGRh3osfkrqx
	 LCsrSjlCz0sIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8A0C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170380069640.700.12479689041099199566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b61015c5afcb9a40a76c077dd9de3b30acd25e851724db91c12b64b4c70cfc
Date: Thu, 28 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703800696
