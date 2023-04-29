Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D925666
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 18:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E30C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 18:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682792765;
	bh=/nK4QbeOpIQrQ+jo1wZRXtMxAsrGg0vVVf2HZoZoLOo=;
	h=To:Subject:From:Date:From;
	b=fPZ5h8vyII4HYorbypInjaWx0mW5Npq/+HWyXMO3cLfjfkmoqyJkOEdCY6YHTsOvg
	 LKK6S8DBN5zkakwfbaEat6PB6mvLNSNuh5pCgsR5R8bFax/QPhGcaIDshdQmGh2r8C
	 lvpcZqLly7j0PXxfai8JqrlokE9Ja7qpGr4R7YBrNGZb3dBB3fMbq/A86WzEzLLUBk
	 JOHnmkmyPA0ERguJqHuwlGyDyW/MgAVIXH1C3ZwJWufwyvou1wigwOHzhM0MNpcFxq
	 xnhxbvaSoAjMjbCdcoHh/lo4Y6wzJA+ItR3huYszB1VcXqLSB5KKkKS49M5KSUtmYC
	 3cFMMzqgo9ISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C704BC77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 18:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168279276580.17038.12831127119416612226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c087224c6d09ea8a1677d419811fdbb0345b6349655444231f67f8ff1476aa8c
Date: Sat, 29 Apr 2023 18:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682792765
