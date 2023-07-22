Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F9F7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6739C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690045328;
	bh=+vh/DB1VEh5tw8J1mAjQ1pnSvg/M/8j55B++GUOTguY=;
	h=To:Subject:From:Date:From;
	b=gE9CDF51FcnCD9jbmk+KQ/vYxMoV9RhBRI80zaGZ4QQc8WvrenZC1IhXSSACiIvHj
	 mlp1xKvqoN/tclkBJzQnDMsUn7M0skFBXI4xeg6Z7XSzkSP06zgpjsw0elApcLkQ+F
	 tX4ZbuuYARVX00uHptgIyfadFhXVSXuSC1Vn4Ou2FsA3VIH18pMAHvfSoC0FmyIJt1
	 k1oDFDhaOzT43mFluJxxWo/6prdSkpTHftaO3/JHP04dwlpSCC1eX5vcuX+5KEop68
	 jH3Ncdd+apK43tVi+8q+azeOTYtiP2RXlPPJEkE5JZZjyBcg3lqNlz4Iu0K6XiGLWq
	 0sCMMVXiKrijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD81C0015E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169004532869.5515.6239770880112738095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffe78b48ee5223f04945721cb4524eb84ec7ad324de7f245e007a07a892d02c
Date: Sat, 22 Jul 2023 17:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690045328
