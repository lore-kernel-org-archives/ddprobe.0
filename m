Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D8B20B04
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5B0C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695852368;
	bh=UOEr2y16pWj1/NHRlGydRLB7szgoQ8cSpcd9UifKlxQ=;
	h=To:Subject:From:Date:From;
	b=dksnVbsIsDOSBiEkYI0I1BS0G4X/8kPnIyHRaQ/q/w5rYhvFZpEYYauHCOdGQjYyI
	 I35BQKFJoLkCNFAGr2ASr7K+Q60JeY66bPEeA+NaCSooiCb9wBbM9N5yi9Yhm7RQep
	 1kNdN8mFDRRpNBLy6F0XDdEceI+MDYrnmaBRNnn7PtgsN4J0s5V4eYyu8LhjFEx7oi
	 h37wShfMha43O9P4XhZjyHNFWmPY3ZdN0S2mxRpsBqE7jCm+XgnTAxlKNR1340vb0I
	 CfW6mh9XKch6tnNDgVz+Ymv9KpsGR3dODM1k0oroEDbnueSYdwo/sSs3ggZPjKHjAW
	 4GbbjczeCLU0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBCEE7F14F
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169585236877.12094.5715807093158106821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c490c8beba357005969317ed17ad46948b865f97e61b2cf0704858c8ef725f
Date: Wed, 27 Sep 2023 22:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695852368
