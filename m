Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BC6C2D4
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 05:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F26D1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 05:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681709886;
	bh=ScJtnr7eYF+3R6wBqfQEJ1Eqb9d3nv8R2xeTQwETVfg=;
	h=To:Subject:From:Date:From;
	b=mv6k3EUwDX6oAhgse1vcmiDgh/8kvGrUzHAUSW9vU/B8+j549ZePVqoxJd/nX3p8x
	 IKSCuAHP8yowgSH3mq3B1sHrbiMQvTG1imV/v7LrxUccbocq7pCz+3sl2cC1h8tN79
	 EbNDpOJ5wxx+Fpx3msn4nC8hTRSEYBKdLqq41joxHTEMw8w6Uhis2F6sB8r0uEif93
	 z8n05WCRfMukXaAm3ct9XaWD+Cz3ofnK9vbEDjwCOqHfwn3eoC7nWkxYs5b7r+xx1K
	 TGlpcfwvr15tjavl3+NU5OGvBMUDrgp/7OxW/wvZTzs8PPjUW1fFguSWake59dS+iq
	 VFSwV2oG7nPpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00D8C77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 05:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170988583.18183.10197388047149665696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fe8924e381899a8fbed418c676b82dfd7914d553d203b05e7db548665e77b7
Date: Mon, 17 Apr 2023 05:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681709885
