Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E911F1107
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E092C433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670732487;
	bh=bsnMa58t47lEuSMGqMpjN3TRV/1UDxS3vlbf8TLWQsk=;
	h=To:Subject:From:Date:From;
	b=MrEsxE4tlMGcNh1J5zoJdXzdm/KLJdLttUC3ahSCxT1961uJ9CuwY90shZvZbGpi+
	 cNAtSgH0WkQtrswsLBXyDKUMrPUyOVdW1YOJpNCFfoRIOIiwsGSIpsqAQ8P2hDH4Dw
	 +MQ1SFwfCTd8iPhND9wlCWe7PfDhHDcNyp8vMpJJHoLYSxE4QZxxKVI/N4vxxuprhC
	 KJT+nEALBDoY21oJMGyuI/8XI6q+vbuBCqAsvlDE9Dmjjcme4WTotIq4lj3Ji9EK1e
	 T43KEuQ68Q7NyJyugEsMx01ugzUU0ptz5C6M4Yu+HSOcshi1ROj2uK7Vbo0HVb808D
	 Cx6DMe5WxLs+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FAD6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073248741.25504.17220504442142123622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a89de9b6117be0df10c0443abc6c4f455a7cea725a90fabadfccaec5142dee
Date: Sun, 11 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670732487
