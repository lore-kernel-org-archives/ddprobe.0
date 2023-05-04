Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498CB10EC
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 05:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EB4C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 05:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683179465;
	bh=fSUzuSA48bQYopb4Mnzyby9pL3I61evQd95U2Mm508E=;
	h=To:Subject:From:Date:From;
	b=DmWyvTgCh4GFotck8kDt8M5qi2Hw9Q3qeiyWYhc996y62xBqmiXIvUTMrhP7N6LFB
	 TmtBLpzD3GFHg7yd7ZZZwgoXiNZ7JGY5ErTPKDrOJN0JNbkniPTYPmEtCP2OYlsemP
	 ojANpJ+dKIkCr5WKXrl+7y6yoS+nq49+5zxOBxRrwpFWxSVp4tWb5bm2NhHiceDHWX
	 kQbf+gnB75jdtRQ9mvUYcGdUS/zGUQmvy+KXanxQnLUAte+SUgdvnLrNq+hB3MxwMV
	 GNKJ66arXgsG2bsWm3MH5vSWHgTMkn+ScFLKFTi7Iuf3ujyDQqYluiyg2e8RNoj99D
	 MytJv6j7IwZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E8BC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 05:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168317946581.6802.10521218165818739246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb418d7f87d51cf3868de8f69b54f21ebaa0b486f8bc404110ce1977d4a405b5
Date: Thu, 04 May 2023 05:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683179465
