Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7DC1863
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68FF7C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669114254;
	bh=hbaLphUJBBl4ejjxBv7RIxseEMyAuEv/tMyC+JvOdC4=;
	h=To:Subject:From:Date:From;
	b=gRGvavrj3gVdkqsFYw9Op03WpbrE37SjOHq7Zs0mTtx6EgFCaa015O2FH0wmDut59
	 EwDlXpwFRXteGwjjmTSTw+cm2SE7MIlJt9CPN+TUjkmCEk3Ps5CrOAtlCStOqHCYec
	 7do4hQx7L1DH2huUtEIxxtYsg9LtLjEa00jjdltIuC/F3TBCxFjTA+OTre9+w2NbAb
	 e9t4bFOlpheigLDg34SYE2t3FiBjjBPKxDYpbCz4I7VmXGIVWzpenWzXN+5QfhuCSz
	 7mVveD0yD7tDA40+dEpI7mFAjSpoz1bOsnVPL15snDmx2bVCyzxq/WmLWW+ahPNe2W
	 CHZlnCvPiOn5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52830C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166911425433.4037.6259142775036851022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9300b0251d4a28764f21debc89afd61ad1274a6f9a98f866dc1592a0baf0974
Date: Tue, 22 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669114254
