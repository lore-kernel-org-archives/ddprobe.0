Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6547F
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C08CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664156453;
	bh=4EFzqz3oL+iMJxyqMKr/SKiG0HYyOeP8l6WUFV4UyGE=;
	h=To:Subject:From:Date:From;
	b=dxxp0xAs1RXBdcv6NKEepR6Etsu/78WtUsRyJoqXfRLDAoh2mZ41S5IGGjOzu2ZlH
	 7vdC8v1/j5E3O4YZy+fHH96+35XNLDP8DiCI/+355Ifmp76QdskJW2ARbDNUuVaDm5
	 ZD0a99BkT4ngYKLXPrZYDT7eHCv8u63OQc7IIGH5YDDeYbKoHlUz1rHeRE52vwNE0O
	 Hl0a8mp1W/l6RoWptNT0oO/eOw5WNyb9gzZeXjGroqasLGiWYfEFF7nOhIcVUa1kJi
	 ZlBrsdWtlfo6f9DwpIB6tdQxs8O0Ao/JmIwUM64BOUkwC4l4snJRoheuclmDSiZTut
	 1fY29qw3axwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B9DC6FA82
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166415645333.10669.3157614630257626359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c95235dbe33300ab081e06c1adcae921ce89c7c4d2e19209c1ed3d59d5846a7
Date: Mon, 26 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664156453
