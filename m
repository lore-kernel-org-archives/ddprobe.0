Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DE57C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBB9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663401053;
	bh=1cGwhIL8B3MnPYOBM8JipkS34C6EZmEuX9ZwQfVZD6s=;
	h=To:Subject:From:Date:From;
	b=UPE0NVLw7CipuA6eHo7DCWEp9BdJru3tu7CN1nrgaOqAk7FyuPIQ6Mvb0v4KmlDcN
	 Kv9a1qRPvxCVPkkzv+JsOjyqFIWt5gJgNEcQMHDqDTs+/UivmtScxcpUj38/2iLUQ/
	 WbAA0FQqaYFFvX4Vu/mxMlEzZ/frWCpMkHArjAh1mZBjSFX8TSyrycwLp5zO2b7uaR
	 4doraYYvdaHXihmHDs6Ix5mMX/LetcGETxDG13HovuA+ct6pGLCmtuhWvEgFxHfmSu
	 jtqxEOAuLvI53KQ22VANKgAlid2Te9AsQ8KmugGUZ5CjnKrCpA+wPfUEY9OL2Pub72
	 LKpGeKmHZdnXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53315ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340105333.13372.8229409060160979704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93b4ce6fc0dd976ebb2a4dac929cfa9967868fe575d2d1e07b42123716fbe29
Date: Sat, 17 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663401053
