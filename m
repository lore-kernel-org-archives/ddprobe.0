Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BCFBA4E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 23:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03C6C433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 23:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681428066;
	bh=bQ9EzeExGoGxtbYfxGrnCJnFw2lMiXyuEs54rpHh2r0=;
	h=To:Subject:From:Date:From;
	b=t3tjt1loVvVGNLxmWL08GgVAHMabZcTSmUJ/V+hMDTYe3LkmsBi2mJL7eMvxWe/y+
	 V6jYrBK/d2r/JMLVwFKZv0DWhPHYDfIrJGMpAQ3bfYbClQ4fjsAKybrl5MBNIKltTb
	 lLjSVAJWjVD9Y9LNIegpcBxKoP2Hb41isTgHsQKWTwLxBK2HbODH+1FmMkrCwLMJJB
	 p50uiF3jZrTzxJED2lB4CaLxqtOOK89y0iHQHDOzIQRLyHFaKZ9aaF2qaAVSwmETFv
	 qtKxDMnjKlWd0b/7avlf0Lugf36seaVIvIJdXSELZvgjDiIjrn3jRtMLJG8bm4IK4h
	 6rKgIw0b+5Yww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4AA1C77B6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 23:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168142806585.23259.10167764923680314127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8fcd535983de12e95b18c26a40b645efaac68f6c8680d56df29fa7bce785a0
Date: Thu, 13 Apr 2023 23:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681428065
