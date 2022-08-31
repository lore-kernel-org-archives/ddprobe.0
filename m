Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0718387
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72649C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661922053;
	bh=XfDDnX4TF/4UBrB/6/a/bHu+BfyZEGL+NozaLl1xFwM=;
	h=To:Subject:From:Date:From;
	b=osKnXdUBn0rlfg6oXizvXucGfsc5coy0qBarT8eHptqFW1VSIcALWPIfCEJkU3mOD
	 qRe4ohldIYodO3Z49UeoHV0dYg+WvmTydjGnOlNUDmVamp+1Tu2C613bf81d1SpTCv
	 Eu+tBsA23J9MA2yyVaC050bLwuskAQDR0vnhYBIOq4gXZKn4w5PYv4mBrpZc69axfp
	 gKWHU+lnO0jQRv0SCF0GcaEQmFrP9FPe0m54lNKH4OAiOaFG2GuEdaLARNNXohZQkr
	 RtFibW3vOHiT5Z9OM+ACPhn5WmamGfBmDOxx4N4S7bDojwNPrp3qByCXqBJDql8LM2
	 ls3wpjOZNWPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58694ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192205335.14979.2079166806857685817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339012915b4d6e020b5a1b443adf24110f70c56aced8ea22ad31b23baca94c96
Date: Wed, 31 Aug 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661922053
