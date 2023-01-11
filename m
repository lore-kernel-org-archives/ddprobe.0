Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF69BD11
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A6D8C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673469087;
	bh=jZHp8k4Xbj+Tb5a5wGnrtt0ma7wVYYCzslnzDCWGIJI=;
	h=To:Subject:From:Date:From;
	b=XlHahYl/acxpreDibmlEj2LYw/kqnIAXVNAMNcRWPURUtre8nJp+T5mZFDm/xs0AF
	 74GfGG8SOOGXJP3NgNuTq/zvxhTsCN1Roy1TTXl7zNMtw3I1tJ26UnENfQVuvIPFfR
	 l0UMuqN+epYiGKBXKnwP6NVLC//SODnUsud5yxzFSEuv6SpvK27tqrVVVuw/bD2XjU
	 d0c63T/FxCFou2qtfDuCj48n1aGXDRW6B6PZaFCerRTBJK1x0IwrawVhKEAP5zgjgP
	 +P+k4MjhoHQT43Lz+x3gpC/G/YhP3knN3NEOrzsp7ooBDg0aI7hAuQkJNZRIV7aoa0
	 zlnHkGDSMx1mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D3A9C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167346908743.21639.6918476033893392675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf2fe553164944b9c21be4c12a191b786b05dd8c9e6c543f1afd90e6081ba6c
Date: Wed, 11 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673469087
