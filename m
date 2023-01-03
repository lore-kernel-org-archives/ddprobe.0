Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BE1160
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FDA1C43396
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672785087;
	bh=Rqv6W7u5//BT7w3yLXlnJBU+T3O52Lce4oRk5+1SubQ=;
	h=To:Subject:From:Date:From;
	b=nai7nTYLGOnrhjLZsHdZpAluMVEDqlnDCs/icBBkElxELDvHGMjBC8cUhZtvC9RsI
	 5PsW7shfQxkSIQ40JUygo6h4HfwQ1XQe3Xl+MduvcsECcUPe3deBLoMAqEwk2Z/hpP
	 9SSNqCxpBITcPju040Ka7AXIZCFaBHGTcjGxkTJxZp3+m6iHFxSqep2JrfI7+FSB6G
	 I2jMjKF6QJlAztqJ109UHmuqYhgELqY0tJ9RRE+h6aLh2tuOfId5vxT8Qf1NW7KVta
	 8IrUkStYT2XG6xpa8k91cwQ4xxyla9X6uMNJhrRsTiGcTu/vYm/ryGRhQ7LfC0t5DS
	 75fHLF9cReSYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E8FDC5479D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278508744.23564.4459862293358227519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f0e2bd2a981c5d27f3a77ca8e94084cfa2a9e2f88e95193d3413423a725994
Date: Tue, 03 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672785087
