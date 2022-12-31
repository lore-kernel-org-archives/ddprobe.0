Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABB07E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CEDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672456887;
	bh=EVQM3fsTiRnEcBjFxs8J1m64dYpRXJ4MLUdQi+TG2qA=;
	h=To:Subject:From:Date:From;
	b=BnfXCflovBfrkRF0Qxl/Ibq0Y+ieGIygElkhsnsv83+WfktsLm7Oa3mVNM02vZptb
	 LsRnPXM6Ymql5+pHeLxiviq7cONrExX7AfjJQcxeUK1aY8wefrtxoQXIcE0cosrZKa
	 6dbR4Oz4Pzlh1itulHhY7f+nCIQKiYOZ6W5eHsSxQG/xdT+9a7WoLpKRIzQfEi1lnU
	 R1GuJryTqzhBW+50jeMAtew1AtE3aACGgicyQMR2FOTyFSu7+W9AWpySq2FkJJfV7C
	 2BdhLYHK6dUD+EOuBeoOLZa+fVhdrCrmqzjpA7kXPaYRG4tJvAL91N6DoCL7b6HRLf
	 TnVLAZBm9ql4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668D0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245688740.20673.9916787189030136838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f29ef0f76720cdde2c11e4a7a289868dc06b1c094fd6c0a11172831aadf03a8
Date: Sat, 31 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672456887
