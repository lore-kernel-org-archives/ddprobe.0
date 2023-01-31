Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357C7629
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 02:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8670C433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675133585;
	bh=YKWm54HznrnIXaOG4xk5VfLdlnDWtVGyLak/NtVYu50=;
	h=To:Subject:From:Date:From;
	b=glkZ13XEoeNFAvIn3SNS5ijt0yWSK5ZsLu+/nDi/CPsUfoLBrON53BY4+AXfYtCio
	 IH2GkDaLoZDFjr40/wVuoFVov4Q798I8qAz+coTKwJJvYgttM2Xjh0CYobNrRHJ3ib
	 04jME1D8SM92ujw7Pln4vzuVG8JzfYLNNSAj0TUfZPc2cdeMB5lA3lCYrgPBE+TRDu
	 oJwHRM4iLz0kvhY84vfWn7F+afAGH1XdWvmF1Ji0+ZwnUiKJLu+IaN+WsAyctEwgvK
	 KcgeMfxgXNq/hXeIJISfcPD+wWs58jkVz5Cp17nggpiQw01OTJUNtNHWBfKbLQdXAG
	 M2WMephu1zaEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CD1C636D3
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167513358573.18640.3822161469950630363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe31004e6686a4309f12b2ef761dc0c472d966da2c0ab17c03c51b75938f24c
Date: Tue, 31 Jan 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675133585
