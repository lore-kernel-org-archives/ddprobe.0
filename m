Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05192F34
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A38C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664979053;
	bh=KzJ1IIh9cfrXcjGnyioN5rghleMCdYhjpQfhbToSGFo=;
	h=To:Subject:From:Date:From;
	b=DUyGY9NWftLXHLDprCh51ySz/zqykedOZR0sflKtFjXhhujDC/jdMP5luKiUrRrBn
	 xbP2vlv+M5B0C7D3RKzlza9Y57VZT5cZTS1spP58dh3KhpatVXljTcX9CQzRLLpTZH
	 T1eY7drn6nByNsZO6PAnBu22DVjVj3/U5Zsm7Epq5k+fmQt7gl74uIYCkP6v2np//c
	 EnlzqRkrGLhbspBq1XP6m3S+8FPf1YTQcoZFeKaNapKMVilDxULgvFp3IgV5EIAsGY
	 q48fYaJrDkKsBSJlR1jzK5tD+QLwb8blCsoTCFhb6I1hiHt34qFnoUgAQ+uTBXLYfP
	 9tHhINxXwip6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E8D6C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497905331.8385.5135776116660905955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dc4a7f11a7557b4057c9414f7286d77e15257b83554198f233a2ac300dc42f
Date: Wed, 05 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664979053
