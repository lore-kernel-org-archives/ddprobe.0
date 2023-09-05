Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774D2D30A
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 13:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBFBC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 13:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693920848;
	bh=aE72TllMFYFJJNFQtqjXDoeFsicj5rOy7ErO3xDIfx8=;
	h=To:Subject:From:Date:From;
	b=fcK4t2bT3MBL8WAYahoFxG7wDOgpRJh3ZaxGX0a9zRIIKvOTPK7O6DxbgJsKypdb/
	 BoEH1QAO0gOrPFH4Cwten9GiL87HwFGPl6W3xxQYWc+wtHfBPjO3nDEEk2ajN4KiW4
	 uL588JOURmalWB6q49gDbEgdax0jqNfeR0LBCNU+SG5NsT4mn9PxRyXB1v05zxtz+K
	 VzlWpmxSBtAH7YuBPGRAsFr2rmUYLFnbFY0uXlewtau7+yp2VcaVISAI2eaopFjr3M
	 eMEyna+dlVMl0+7Gb7WsY5a7ID2WkqMxaIhDtWQazu5mmwMtrqg6kZoHMaCJF777tE
	 QqZeGgvXepL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B5C83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 13:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169392084869.32439.14389932135434662875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6604120c7b2c832d4afab4a3df8f16d1fbd0c21512834fe00cd43ed7186f7fa3
Date: Tue, 05 Sep 2023 13:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693920848
