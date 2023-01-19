Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E6B7485
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8720AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674142887;
	bh=uvdZ+mkK42s6rXMC/X6ffxyyJAJPDHlLc7I4bHPO2Oc=;
	h=To:Subject:From:Date:From;
	b=D3hbs7D48Gr3QEKUJwocfe6wbP1E0RSoCZjpa5jiK/FMFcmRNISElK4qzuCK/4Q3c
	 sTN8JnmppMXbMhTinmKInIBa4qwXyNh2ixJu3O6chwq7Re3zPHqgRLZ4jLH45YfAOV
	 zd/5ujEh9hJab8j80QkMM4Pjv7uf6/ON949kFVjG2PFE3JGE/Hhl94pBWnmTf07sWL
	 aJXuT0KrgcZjRolxmW1iNT5kpbxiCnsIOIJYzOx4DJQYDFQWz22sb2dEByI5sBJ+sn
	 NvIslhaXBPjU9dS1LQyBbsxqfzedGFaLyQcsgeCkK2XT8WeKw5lN8bPBX8hHqmL476
	 dlk7XTXBGXsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B09EC00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167414288742.17267.13894583904793402811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c94ce20e413a0d97fb648b7fd7cd159b4c7f0da54f958d3ea997a4fd0ba558
Date: Thu, 19 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674142887
