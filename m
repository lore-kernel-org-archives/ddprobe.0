Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74DE362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709EFC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666521053;
	bh=w1tc0EFIfndi/l8IxLOOlV9K95ofESnEdObZIiBLals=;
	h=To:Subject:From:Date:From;
	b=pEARYNuM8QzSJNpVi0PSgq3TbOmliNHZDR1PGRxWKTjL5qExU+OPuemp8B5ngN/W6
	 jr8CZE7ABEX9rvOCdJf1oWqKnJG2PjYR8wJjLcJWI0qXHjo1jki4uH/yBKFhMgmtXu
	 /07zwfBegAjcc/O0fk0HbAAFbrbtLdTQeIlDN/XxgfAsNL2VC9GEq5hIGCRKDqWrge
	 LejluBAEQDRNXqDDLJ89M+tbVx9sfI0NJg3phLjb9kFkTYLjAHkV9c9dtIe6mTZhBd
	 xnWbaVQQELFiVtIvaSSMquO/wx8spMVCcYoEbKRYaR893rqWwnHRT1ly+E3gHASmB9
	 ZYirP4z3g3R6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DD8C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166652105332.12651.4533770938838869859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65618102248bc25a9ac9e174e550cb237aa4462a497c68b883049dc429f7a730
Date: Sun, 23 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666521053
