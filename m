Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4CB97C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCD3C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669777254;
	bh=fK9sUl+z9FFo2vttF1aKvv46MXihl0rgVIsn3rCpaPs=;
	h=To:Subject:From:Date:From;
	b=f+CTqci2ZiJsemza1+jQTsRZQWebzCNW0mK1EwVMMW1eirYvi0wNjeopAovrDLrOl
	 gmRbzwJEq0tFHp9gA+D8krJXiKQb2GIJ48zxlB7oKLX4kBdQaTJ43StU/GRzT2o9P0
	 GyeLKHkdSJasCmhqdpL49HIbFre+UYD3mSmHillHMyK3sl/AxOiUJ+o6/0bsTOp0N5
	 HcQySSXZSn3UU9N6Ys2irarZUEwTNAaXKb9nCTycaCTPSDprvPEVMa1zGyQiWtWUkc
	 Zihlap0LQSpPgJDtKR8ReAOCQQyoK+Zh9kk/sbhQy5xN/2jh8lWekKtNV3sr5gAnKb
	 rPbp18gzHBA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5950BC47088
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977725435.4802.3951656782605666551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fa5364c070d8c877c9b8f145fde84248c749af581c3a36afc562e8b6458e3b
Date: Wed, 30 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669777254
