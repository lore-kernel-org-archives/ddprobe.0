Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707DF7F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D461FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690108328;
	bh=O/BymQoX259Du9FTMF6eSZEkLN3S8EGxgGEQBv+cUxo=;
	h=To:Subject:From:Date:From;
	b=hy8IhXUKuZr0tKMZqj+8ewk4LwBE5o3LvrhYJxkgBG0WsSs9N1CUKui/oasN3KdTB
	 6UX/0W3obRLKU3uwllSp0wQNXfNAzFa4JG2GUcFBfj7bEpvByjCxiZr7Pv+VPl69Bg
	 vjdxp5HGCUSF/utP0yQM8EZ1nSbj+UZs9nFtblrbf9g14VemvuxSqrUqCOeH50TP6E
	 DdwitIM4OlWZTC7XRuNGJQRuqxNY5P6qUZ+kFgImGPp+Pa/CUg5f8gar0Wx295MhqF
	 MyzVbqQOoBzKz/HVVfjZiwgaSKI0Td9y5tP13H9bRdYb/YUxuAaYrTXaWIjrjW8mxV
	 tS221NjvqN+CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4091C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169010832872.26526.4260082622990421341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3914593337e80b6835bf00cece623b146fa0f5a9a1189f0d81d57503cbf621
Date: Sun, 23 Jul 2023 10:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690108328
