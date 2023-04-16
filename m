Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7D63CC
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD202C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681683425;
	bh=29f1Nq4Pbd/ixJOsD3CuXrZ7vZACdJv4hZUBWVh2fsE=;
	h=To:Subject:From:Date:From;
	b=a0gdC5F+BS3F5fmdyH+7DPEhvh/cLweCTZhKP+ituER1XjxGyXqWGf22fzICChMpN
	 AJORJa97d/qEPX1DgCeXk+qIC40t1QGyZZMPbZF7KRTLNGupawqAzO4BY4ninbscwB
	 Li2gwTNgkXnP3qGfmp888/eGeiAu6Td4b3BnBJeOHvOgmWuElb3gUzSfsqS/9/RPL6
	 lFObOwAVZEu666UrPrdrt4Kczc3wCkXxuxPuh08IHAKjV209v3HeldGRVdfrA9G7bT
	 IsfOlVBK1NZ04TnxiVm/jzjcQRkDk/m6auZJy9l07yEKu90Lh7fikzO8GxzuWmdIhn
	 lk98FL0+A/DTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB602C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168342574.32472.16362788665033740204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1f875444818cca8efd6a8475d43e39c22e261d75a4d105e156bf22454665af
Date: Sun, 16 Apr 2023 22:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681683425
