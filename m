Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38117E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CBBEC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668214254;
	bh=86gL6kzuDpfpsdr9IRM63NgFDINLQKBZFQ7qKGRUAvk=;
	h=To:Subject:From:Date:From;
	b=g4O1LPVcddg+OXzDPfX9G8c3KJpGt5g3C3IWY5SXsP+8xdAfrj3jC20iKFMnAHF1m
	 1Mmk+8S13MqXvpSvTy1yBd17TKncTlqWQbRxWxy785UbCLWgV0F2BnRHZW3dHm+0sc
	 qyV2DDQKgniaj0zjvTqplRfgx0CfXA8g98mrmqvKwmhm5rurwao0l0kepOEQ6foBXh
	 MsWIimT1xrKDh6objW+Xn5dydagpJ3d4VA5XLBoEpfhRdm3GS4X48Bs7C/xK7Etb6v
	 YlgWMyPrecoeiZvzefJVrhV/Y02dnk01TK2rwpMlplqnUnf+Y2RR2YMxbI6A4mhC3b
	 rOgo+HWA+AeEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F606C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821425434.11444.6312802352055282630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7739441bc7cad72d9c26994e6d8bb15faadb791a639571d287e839cef47e44c5
Date: Sat, 12 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668214254
