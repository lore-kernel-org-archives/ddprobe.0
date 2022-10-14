Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD833440C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D09C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665775253;
	bh=O99F/97rVFe71ynXQOMZcFj2JY7rxSmLLzVmFVChuTM=;
	h=To:Subject:From:Date:From;
	b=rgyxMnDubPmyqBUHcHQfJ2qISpwWIp28GoNf2xR4wxlMh0cWIKPxY+oiTFThoAy7z
	 ErGE57HKx73Y6uBR6Q5T4DtRi1x2jkaQA9Iq3Ags+t4G5V4V1C38/sNFIkBpGlyMpU
	 Uz/7XYiNfgz0tNSxRffwhXNKztpgVp9yM3jQyrpFXmonavPO7MAq588RcsDXOTZLV7
	 T9EbYodUWfXQzF/FLx6Fb+0C4XYNBYZ4MeICGVkKOJkXkh1haE3IMOxD4hH11MIdic
	 499t2HESWk9A3NntzlTNScwQhVJXD0q3BMVPZ5rW1EldpqyKt/Vqz22PKas49IFfCQ
	 +HjqM0r3pWhoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58818C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577525334.31571.1357317236073507744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40547dffab98cf5427ac81eb066a01323ff29bb30088e385dc041b2a452d7caf
Date: Fri, 14 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665775253
