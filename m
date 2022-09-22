Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93161FA0
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED9BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663813253;
	bh=HWPadIAMUu4w6Cb516ad49Y727DtYJ1mUKD+I4pzpmQ=;
	h=To:Subject:From:Date:From;
	b=EooLEFWbF3CrVAK5+hR8KP2K7CcKvTyjIgrNgMPhz6E+4qvvj4LAv0Yj0DvIIJGD3
	 TDT2m3vwsdXGETLxS29O7hcaionfgdeSMSmXqXJ5lx/wAPynq+ANiYHXRspM4X5978
	 WGiP4xUFDadHhf5V8zZIWoQDBczqTMag+NE/HDnDKb461c9kzwDzKoVKLM63wuj5vB
	 xuUSr2SAhY8o6tgqB4FE1lF/XigqIzjOHMtY6ZmHisplVT+Jq3foPJR7A7bSsNSfVe
	 U4Bpc6Lgl3zwq+g9Agth9Eftl77Q+bPSgfzRulvMGXQrWfwxXVoOdg0oNLvc4M9p5g
	 NFpdGyDKqKz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5234FC6FA8E
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166381325332.12405.1179288394256584070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a15055a99cff073b471cc8f5b6d5c2be8bffb0f8c779fcc56df379d8905a5f8
Date: Thu, 22 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663813253
