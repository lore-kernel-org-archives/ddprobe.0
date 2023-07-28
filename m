Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD471C06
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FF2C43397
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690557728;
	bh=VWSF71KOttZPHG6wpkQVmHJWVUwXSptYWoBg6ix5veQ=;
	h=To:Subject:From:Date:From;
	b=nwMgixe7L5qP6gUhvyKF8ED4G5Ylf0KDDnVNYe+VodVIMb1HlJCqsMxG0is0yOByi
	 NrHeCF1VICx5IdnRtNjeMCgAN4OivSp01kawPFZlTFZv2Pv+YNWARsfIEAMxXQDFvH
	 lKG9/c6KcME4dCT0KkpEmLBWutEQtMJptLRTtznJjXAuqiqUKmg9l3JHe3823pXaHx
	 9SUY9cwyt0EZ4tbJFvCgDY4RTXLS41UWgpMpMvllSKf90SS1QJ6AqV7CiVB6VSSr4i
	 eCJq/HPt3DBchad+IuEmg2eR9Kyi9cki57ctNW/YOxjQYvmx8CYWtJsKhxQRevkHgu
	 E2fxG0gpEnjNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59E6C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055772867.16907.2818403014752127864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98285e551fb3371bf824d450f0a975e36d2c584a0e7641e19118d32a1731c283
Date: Fri, 28 Jul 2023 15:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690557728
