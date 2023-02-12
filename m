Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BC21C11
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 13:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4619C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 13:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676207645;
	bh=LEqRKtfcADR4usYyjdVXByqFANRyCAmToP7GbybG+xk=;
	h=To:Subject:From:Date:From;
	b=umoO4FxARXVYJ8nnp6PPxOfWiT7HVEylUNKZEwdn658xN0UKcz4l/zf5XN62JuRtp
	 R6xkpr7XgoPijylkNwHSnMAQVEVj2Hgr7hz+xUPC6Z5QQPIqDmCCQThfp+mp11GdVX
	 RsXQAKioLDIdCWGibecWYmjL9E4wIRPPM6d3VJD8M6JSE+S4ZdXBi7NvBPauacYP1+
	 FDikaY8h0GOpEqtEOfVTxJcuS/ulThbY0IqNtiBnyuz+qOd9ag3bh5is9wHPQqxI5G
	 DSKPdYLuPgg8D884sdYARiRJ1Jovnd1J6HOfBdqIvXsfpC3n2vNhnoEoSNNxMdaMYQ
	 FlRxxLBhKmBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8A1C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 13:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167620764576.15754.2515575896317369945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c4f50060bad412caa4d08064d25f5f11c740b6d63bf9691fcd6b0650df6134
Date: Sun, 12 Feb 2023 13:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676207645
