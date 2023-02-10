Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A4F63AB
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 16:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01096C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 16:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676047446;
	bh=WU8Abyand745OnxRstsH8E2ySsA+TshjxA+qJqhbjNU=;
	h=To:Subject:From:Date:From;
	b=ZBiV5RL6vEKOTGRfUHaiA8K+81kUy74jAMvit1De5gYuOBN5SKSgKGVM4+D6VldQb
	 mOjqLQtqz7Lc4+CEy8iBJQywbuw8BXZmrMUO+SY64rs4xCmbvFgF9Y0hC54qUdNG9t
	 QwhW/GFBHF5fcuaqrXvvYIJFpn/CwkMmdDiUgKGB6zuyBQANA3xObcJ3VG8Xi+vFPa
	 DhYkPPr8N7TPQp7VlEvBv0HeilyVMgZKKbl3mfWrZJM68pTCFpK0zwBdy3ApAPe7Ar
	 OLgyjasr0nMKhmMwsh4h1RmwNDYpWmZEfPrj+pCZipK9CdmABM3OfBI4/kYEflLPwn
	 LFaFl8yh7fjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE5E6C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 16:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167604744583.15708.5419208689039654237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6e967d79119e8c28914f35acccbb7323efcdefe5838d27cdfbdd62ad0e9a91
Date: Fri, 10 Feb 2023 16:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676047445
