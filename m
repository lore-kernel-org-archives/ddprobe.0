Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA34E15A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 682F2C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662342653;
	bh=PssCWPJR5V3XhDA4zeC2rHwrllysOcoqwvcfnGC6sXE=;
	h=To:Subject:From:Date:From;
	b=VmvnKRaxo/1+ceXC4WChzrVJWVGCvIS1FQ7ZjAqFPDVZ+ya3en3u7YH9DBwDH6dBK
	 93q4hARQcn6XxLKjzXTb4JBATx1T9qC6OpJ9Gv/CZPn8AwhHKQZaoWtnPJ9oHkHdgn
	 DdTPgBPKCSKHGm0sHcEHkUHVOyTau+bJ/4FigzDjx3NvzEyoPS/kuUbRnx9cVAGuYw
	 Aklynoz2Bcaxtc+TZcuW6OyJNGARbhlh9nNC8MoB2ZSufWLz/Tp0opQM2IQrdR/05n
	 fuGKG4NK3HrxxRCit5Fo4+uInY/I9yFBetUz9LlJP2yIgJLqybxPE2Wge4PlAuzRCX
	 u6hLPg43gacEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52955ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234265331.19908.12483025310749986396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb73dfdda96281c92be69b39fe1b68778ca0c49b977c48fe68fabc2fd7c9831
Date: Mon, 05 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662342653
