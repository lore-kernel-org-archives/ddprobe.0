Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C94C1EA92
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C668DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689119228;
	bh=48P9y2+3St2Sgvp9cGytTJTHcBRfGGZZ1P3cwpSBo6o=;
	h=To:Subject:From:Date:From;
	b=Dt3BfbpK8kBKeqK9u7GWKJj9CeI6bQBhHDHxM1TaJGkAhvvd/k8pQtczYWIVlhWlH
	 yu8Ueqn7N4aA24GANLFlXV6ZS/olD7P0X2Tuchxhd8zKaZfwb0zjjagcsShplXKSQm
	 uLgwntlnLBB0P+/LvwoGDTIrFYh8mmxIB2veJcyUuUWxf+82BH4j3yjhp0F//3WO11
	 eeWEOoUsRZiNxazsbThSLExSI+rWBckno8i4LQTZu8QGZkxEUDTrxNZQt7MlkNNleD
	 OgXWDovpudhcVZsPBRFQA1AjcUmD6D5X9U83kMYUQLTRWA0J/a9S2I39t0SRMoTN3I
	 aP13mt3vHwrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E24EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911922868.24532.15504989226454888657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7550ec49633dc216a24c604d670730a2df01ab5f69eca304ad53112ada37a2ec
Date: Tue, 11 Jul 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689119228
