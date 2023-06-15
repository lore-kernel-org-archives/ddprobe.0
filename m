Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6455912B94
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA6FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686841749;
	bh=gQ3EedFu7volpxNHn5+0HJZVirZbEzu4Zl1eAg+LHFI=;
	h=To:Subject:From:Date:From;
	b=W1nDlHm5AkZGDLDAxktLLvLLiITtrSSFaD4KXnNI5L77VMOVcu9YYBWXQDCCjv/QL
	 vhZF5tmPzMPIcxYhIVGxfq8zsgprsFs+bP47WAOPhLPoNZqm2bdWVGFnssD9fDMTMD
	 osX0KZWM0Tq1d24jimdflP2+vYCk/SnaEeBwJjT7rOIFQE1QkxKJkHjgUhjc5+5gym
	 F1L3MuBR1uSH72tfVrTGwmfQRGq/8vVqkXhoYE3GKUXNgoFEdXHWogDfQDTZbVAILu
	 sb73ZS5dgx7+U20YYoSupFe3kmEAg2fE9XeHbOeok0JRgYECTYOUj4I7OnRgi8LCF5
	 Tx77e1TBNk2QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA087EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684174873.21086.1824510124914803275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62acdc0d639143c284295e10dd629a239e1adce060a5db616b46dd80c4597678
Date: Thu, 15 Jun 2023 15:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686841748
