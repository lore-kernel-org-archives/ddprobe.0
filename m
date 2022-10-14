Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73822F3F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3B5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665789653;
	bh=G6NEuaLFy1saXFZ1AbYD0368pcGLxQ2yDKN7tNN3CXU=;
	h=To:Subject:From:Date:From;
	b=mUocyUUina010PwLdZ0m4cEiuIlldcJVtXT1BXr42hRF0mUS1G3+tPBcC7zNXp1tI
	 wEGYUlU5Y+Yk/U6kH5K0iUe4Dpb5HOe3/aDzwgCKm88LhqybTrnbH+5kIxej4kEq8a
	 SwMALarrgZ4yDrO3mluIKhWaWIWCiKtUi8F/q0jl2R+5SS7yE9hGPpkN1JKrbKvZts
	 I+9ay+WxKXyQnDejkDtFEV/D7xUMMuOVNDY8Bc9FuIFdSlo66Ovi6cw+MzCObXbFC8
	 eHoP90UtJh5IH4aUCu3Sx+eeYfmBv7IqkKrjlIr3izQUqsXlkEuj6P4hb3YLVbZBZe
	 Ug38pMXnZEYPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C971C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578965332.17719.14089568187973212369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0eb2876e0a28f4db01475a45c6b06270b9769dbc9d502e3a4ea282d111e89c
Date: Fri, 14 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665789653
