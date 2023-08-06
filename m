Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6733F28EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 15:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E4AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 15:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691334188;
	bh=pXOajenaORco8YlBU5bLOwotVrjiqK8RfRU9CoqRkAA=;
	h=To:Subject:From:Date:From;
	b=kDCUsSX8Lr8hWbfszPTXuk8WNIpv4501yjggjPisB+pj/9dDrI4doUu0FNGkeoBJc
	 Ivnyr0xix25YfVnF8ptv5uA+lXhWUq8QYBhBBjF5u6CHXgllbGU6UK09y5dEqi9bdP
	 3gdEtAnUAbsDs139shNJmwHSJT0nmcVn6Yf5DJCCwL59u9b5aaadCQi8Ag1iW8yPWx
	 UEhdNtF3QlGocgtBXf0f67ftfQUR6/6SzHeq0KeF6PbWMs1BWhpKhRXwAfpjgTtMgT
	 LCmUBG4yG0XnDbH/vPhQU1Le0KlM+wb59xlzNEtK19i00BEhpUCHkhOUomLfus4b29
	 Xbg2fmDMDaP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94CFC0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 15:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169133418868.15532.1272150635276395371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada20bc81bf2d4f6ffda7863eb07f4d2623d7c9f635a1dbe0cb3664287b36942
Date: Sun, 06 Aug 2023 15:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691334188
