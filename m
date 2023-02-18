Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8368C2F2C
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 16:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D532C4339B
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 16:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676739366;
	bh=2FUo2tak0mLF0QTm/R1D3Flf2WM14/5UPKtCsmnXb3U=;
	h=To:Subject:From:Date:From;
	b=Us+d1I1hZUQ1LV8EnYMpGGSdECfyJXpv0G6uKv1EwTkWwasB7NhZmf6AtgZ7/0XYa
	 OUAxF+wn5ZajnJ11c2m80aTFeERdVKUdgWXhsbd2aaAL0hCLUwafKmFt0odn4qhbb6
	 UXJaYlLPKbxVXgmx3WpYHpk3easo5GYbSzRjxP85z6BXuGzht0RHwXF0eM4ohCJR2X
	 XUTujWjsG6hqcjlpUf4RjJYQsNF56hNYnmJA7kZV9dzgIb4Zd3BWtvWI2iWFBn1Ucx
	 SoHTdiTqitRGaBmOCSFDrWP8LWWDRh/J8HOZzUvP5VhC2gNO8BS3YYaQ4k9CzndmUb
	 Pp3fdhkzp/mMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10A09C636CC
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 16:56:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167673936599.29423.16851678273704639538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1baf0ae46da7d7589c4aefe1c70a14b16ffbda1285edf0a1f55f05ee12b38f
Date: Sat, 18 Feb 2023 16:56:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676739365
