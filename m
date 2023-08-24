Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F392D2E7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 08:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C953CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692867248;
	bh=/AmB3hWnOaT89nzyfuho1WaoJDmS2nQf4hE0Bb2qL2Y=;
	h=To:Subject:From:Date:From;
	b=ceaCPKF8jIlroxrPS3WZlN/4O2nZlJB+jJUjzAmNZ3God2Z48sDopzKbaUrf+BT2S
	 2tKb88atHtjCGYy68QGl1uPx5HzKN2X8bkHkxoXp0I0HGoIz7KA3cPGbejPnjL29eU
	 0qQzqgt+dOoyIFkfwIdjlzMu7sysd2v/hk8793HfrjMkwXF4d3IPiADRxFhTtKM6Mo
	 aowsWATZXoeKRcemadLMetG2I+rf+OuO+vj6lq8IQRThp4xraHsAAVRSE9wK9moQ+h
	 5XyBI1hvxuuppYW/+4dwEAhEEQLyNrXdNCD1r7RMkxs+sDF2FZaU5UTeMbN+p5ovlT
	 dgLQv2Vi3tdAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0268C3DA6F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 08:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169286724871.22633.12206651399853457110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d544fdc6ab0abab1a0519013f2ee1d01e04af49ecd5e26e049d9bd5ccf7809e9
Date: Thu, 24 Aug 2023 08:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692867248
