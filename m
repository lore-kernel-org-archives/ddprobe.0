Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB57915DA
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67FB6C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662439253;
	bh=N3vHbZdqQElHRjL7WH2vdD8JsNNv12zlUC5Y/Furm34=;
	h=To:Subject:From:Date:From;
	b=Rrcy5uItgkHGjMOHx7g5anZ7PV9m7uCpn6nZgQ0Xw+O5YWt9xL6uv4Co3MxFGs3Xt
	 mW9Mbx1bHmNDEwrU4xx/Zxd0E77v785+DAzNF1koXU1kmQ9CuHcesIKLb5Sx03aXug
	 CW+Cj3qq/BTmiYhV6/hCUlY6eizTJt4WrXSY44I1SSxmD3qxMcIZrnQG8abDG/rFZr
	 HUp+dVxrFQQFbPWm3/QTHSl8QXLUVs0BGhUrVQE0Z/KpNCfMqbBwuV3oyP44wnB+Ya
	 Y69XB2Gg4d4I8xOdR5Q5bx6hlByJzRGd4TUeP8L/iWw3ppa8IXKHRFxHQfMxKdsIL3
	 +9+o16FNyg2xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9C2C38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243925331.2576.11262868503893341814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557a638204fc7cce200db2f8e8a06b82e4f0c0a43f24f19419d4cfeb2ba30c65
Date: Tue, 06 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662439253
