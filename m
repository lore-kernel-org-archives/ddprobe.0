Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6A2211C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C0BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661806852;
	bh=NwK8+O9jp8pd1goFS1d1GcNPXLWcLZlstt1qsArsnHA=;
	h=To:Subject:From:Date:From;
	b=LVpBAVx+GGgkiQCDtQrYx9OZMGK89PN+p1qj3SOasNcnL5mPtE0pEK7UUnuS7Ly9w
	 HE65qu/BwHOnn1Crxqzx5qIT0iPtJVUZkoyaq6cLFha6i0GF75Yg3CAuXXygxAObZ1
	 mt8qkqPfM2GB8i6qZ4Bjly7j0Rq7OkneHLz3Yz6CnA7FM5M/OcVrkSZU4ugq/mF1SG
	 jnxk8Woi3GQfFNg/yaoqokXUzUvLve97JJGENkSlpS42eQjFWFfHCTP7/oRLtvZc6V
	 McDrKOXrW6gOhKYMEZeA6GglM/Vx5amdpymA4Pc28v5Wg96bmo5/0pj40F8QMxnf2y
	 OQUXi9v8qaA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A4BDECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180685235.22859.2724162519996723196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee692cd6ce30da06bd32108f7d9f2dfdde0d1a8a1c098a610e0b47bc68d6f1f
Date: Mon, 29 Aug 2022 21:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661806852
