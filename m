Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41F229CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80985C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671722487;
	bh=6SISeJ6xAP0zKQTZspnknzzj6bEQYNDALJcVP4QVk3M=;
	h=To:Subject:From:Date:From;
	b=t4/CJRMAir94jweQBx1bTzWp5RdhIJVLeGuPLB9OTcqhkp/Etcx0TSzAigVau7FsH
	 oUpoxJyzMDVIW92hkJOD1CDmikXNvsMlcb4G9IxBRyAygTSn7gTnyXte5li2VcbJTw
	 h7iCkfZBRyimdURKO6o3+1ZqeFcfHMVYK2vyI/qokSr+70nqaADfNSsqL3S3Gti0M+
	 D1mv76WBcGCf32yJbqXEEp5U1iuq1/wl4ex/Hjticev4BTyzQBs8zngSbI6CHJOOno
	 cF4hfBERgoI0UXzCYbWkrKt9eHO5t8+A+852oix/9hloCEfLl2Nl0PnbMRE7qyroZa
	 6VMuezQYvsD3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631E5C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172248739.30696.12729482877891369800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e01d3812dfd123b31b7ab6843148fd88769a83bd1143eb71e3f249ea7a516b6
Date: Thu, 22 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671722487
