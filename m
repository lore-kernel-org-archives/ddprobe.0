Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB63820E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7535EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665636653;
	bh=xhgCatBcJ7pKgKhUS6wLdcbMjRnYyeqB4s89gsIP+KE=;
	h=To:Subject:From:Date:From;
	b=Z+8cUPh/ZAwErgsod+YbisxF5FBFAMpj1S7R1SdwjhNgkKCBuYKK+UEDmj7SsrFkZ
	 vgnULnxZCz45kDfloHlAActNYQJ/uosmsMy4D34caRVpFJKbY85i/UO+GlCcJlcb9g
	 Q/M5gvxXfnkaQ9lWynQyIewRmc91u47fgeGhVay1cTrrB7BOXHs/nZ+WUH5phRNZCZ
	 vVc5g7fokIP1cwfYejvkqMf/Iaki9ZaJqnFZpYjpWgTeO/fh6MFaJD59uQciLmAFFW
	 3LA+Q1g2lrOHuvWsncKfYlAQZ457V2RstXU7A4Y9CdoGF6iGJO6aq7sfULRepc7npU
	 e3rttKzl6Q4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A87AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166563665336.1966.9294196844055387359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fe511e2a586ee4187e51dd8ccc0d31b20276d8d33b8545aa6b0d2a1cd92271
Date: Thu, 13 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665636653
