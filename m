Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3571CBA4D
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 09:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E74C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683884705;
	bh=AyZvjztm1/Wd0h1wNf2e/lYSYKRWaITk87cKeyCoANs=;
	h=To:Subject:From:Date:From;
	b=MCJnGZ7o2gwc/upqqPbvEAwxF9zc3Qz/pBO8pVq1hwUearVvs4PLIyZuK8ugs9fOy
	 2jao4cQfPXnSaxOM6niwfDliY+X2gCPvRMunHDnhtxrTg6KmeD03UHsxkeY4DWPrby
	 1U+htJRQwnFsvLpVxjUNrmxUp7BScnLrUthfnQSn47CQ4CXIHc7j4sfoR5RCKz+OWg
	 WS2kYar3bcaqo+wiGsf/Bb5eaxKR/XaPs8MFUDYrONeo/IdAkcsmdtClCaULGKxlGQ
	 FQcC2ibiLVaucPPSJmCNcoZBrLySyfwseeMEzPQjSPL0H8UmIV2dTe0sd4vn92gbwO
	 qvQXjPtqPiHAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19C1C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 09:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168388470578.3271.18148335061708375122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7c0290180ad95ccb66b1d061bd7b9ab11377d5e8ee644f31bbf6011a69f08c
Date: Fri, 12 May 2023 09:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683884705
