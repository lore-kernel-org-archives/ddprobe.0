Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB918F55
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9E0C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664781653;
	bh=OjIcc9lzTh9F0iIy+zzNR5rWnhATTpG43XuaXhxpcDg=;
	h=To:Subject:From:Date:From;
	b=s/kfufQOKXCqkOjkgfyZGWenH8yEMKQYYLOeSwZb50EL+rFqkPwlMhfYukN/t2JLb
	 y6zZCrv+A95S/SimFCw7YKt4su5Ydgt6knxAS4OWofd5YpRQaUV0xvA+sbl9j9fCuX
	 UJn/y/XhQSu4BCkD6Bfx0WdbueZT0jLyvhzeTKqZFxarWamj3+YT5M/FvpkW6EZszy
	 HWutv8XZk8HZzdCb9EhPv0+dtOwg1LZt/cFZrzBz7MG33O9jWkTSH++cTmkIC8DZqH
	 G0WDzBq/AqS6VMU8L2GX/UIAmX4vTIA+71HpdYmO3336hCUQgd26XKgv9QxDA7SMOJ
	 Punh0v3RgmVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B83C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478165333.3682.12734689995386804005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4bea7997fa331a7f47edfc8205458825448c55dd532db9cf614e82fc2957ed
Date: Mon, 03 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664781653
