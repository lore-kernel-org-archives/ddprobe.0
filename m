Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365F510EB
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 22:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42A6C433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 22:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681771745;
	bh=VNDMzKu1McRTDWnL7WJDmXeq5a//nIN58h4TizeTOa8=;
	h=To:Subject:From:Date:From;
	b=pPwITFyd1kkdXB9AVzzT8+LTTHkqHuZyOHW/KO1PvVNExTQI0PKZYcZbHXzvNtKMd
	 RGUN0+jDEvbEsgRXrbSnbqc4SECAi3+ilvDBOaVsLWFK/GFXkwkAY4JtcGoE2Wlr9d
	 +kNCjqpQSBjaEjoy4tFRdX5VPX51+Nz1PoPEpoqhQPmNnxi1MtipW+UHGpNNeJgBWr
	 X1WiO+ZZ5wIQa2O0QvFdbJ4Tl+xvEIiX83R6QpXRZ5LuE2otRORTprkbOEgfc+I5Mu
	 hk3HlU5rnikcy1mVarGg0qfyMK0ppcR2SaLtIIRIwjaCBWsYkawyArSrSaPniAAdK3
	 ho9armJ8NIFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA5EC77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 22:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168177174575.1064.492521025728788397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990204cb491c40352b8a87b339c83130041af1b2c7a073c85dd280451633fda4
Date: Mon, 17 Apr 2023 22:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681771745
