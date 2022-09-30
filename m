Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F511FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E34DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664533253;
	bh=eZvuSeX0a3PMW36Y2UWqwdrWjHY41/BgktnrXtENOyI=;
	h=To:Subject:From:Date:From;
	b=Yl3tSxAej+LLFx4FHrW5h7tBAMiv2E5zKhGCjmh8H3dbwFYeFSzMzczf38FGT3kmq
	 4l4SbWzmO42wQSvg1ioYPS3U0/iVmeqq/wZFCaLS+al9wyYs7NkeuVS48U9OcxWH+5
	 RHNq+4DUtB9xSsfnDDc9WQWwI31jFalxieafVgT1Rlba33IuE1LMPR63Gjx0MrkAy7
	 ebIhUwR60utrK9DZT0zWSgCQrKN2J613zH9gH70QLFP0275+2MyhsCO2KpIAVMKQ3A
	 TrFAePb+xI2aaHZyIlnQABSXHb4CR6CmqEfouZ+3jrU2B9IN7X7gigqvB0yyBAhJBW
	 HtyzdO2cYLdxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A1BC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453325333.18504.17644778667294486321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a86b9054ac4fdefddcbde0e3266bf44142f14c431ba3eda83f97b9f6e23054e
Date: Fri, 30 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664533253
