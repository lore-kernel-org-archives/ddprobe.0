Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBAF3D6B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71826C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665769253;
	bh=Zle8fzHwj3vFHzR+AeU+B3Vix0tFJnQuqTu6jWXLVY4=;
	h=To:Subject:From:Date:From;
	b=eOpnLks9Kzw4bVjeXPDWTfnKPvZgtnGwIZpGPoJGCgQgwPZD8ELSyK7Ec60f0Fq83
	 hagqQdhKxwd/aLTBFJDkMj9LljGKDS1sCyMw+jkZ6mEe3gVN06COYx3GXlkLNbnPLy
	 LkSthzPuIxkjEnXLhU4ebdGmtZOMtkedvgSbjp5oUT0f36rDrLjCxqFwu8L/HXE9ZE
	 TT9Z/Qmqv/B5nprEgkB1TlEQ/2l+uIJByW6eVU+tTnGCWde7GIbQzOUGkHslyVXIdT
	 fsnVDf17SePSfyk6OKz37kohOT5wN7A/CrUjOYjyMrN+MTPA1LpZxbjJuCbGFNc5Mm
	 UVt9lPzYll0wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABA3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576925335.14391.15279370373414389515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96500cd53aee413767c32dc8baa8aa11157c7df6e795f9143a26c04094d28ed1
Date: Fri, 14 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665769253
