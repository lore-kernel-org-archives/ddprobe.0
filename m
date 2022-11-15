Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8467C
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0C5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668474054;
	bh=jCHHU+Gh3eT0ziyQWI+RVUWL38u684CIk5SOWmFGd/o=;
	h=To:Subject:From:Date:From;
	b=LUawB/NisVZSc+U3S9anZ1B5/HR0MGDx65rzbr7BcqrVLo1fAxeZyCWaDVysTV6cA
	 UgUshKfIx5ozEeTjZ8AOavSrnwp3rkDuJVvNa1zdSA+seKsd0lBvo0CqzS+kg7XOpo
	 GddwLoxCxR0UOoayIgSul6wIMJgV15PNOGyXisfUQEbJShBYeeGT9AR1nM3Ttyc2ZV
	 LAzMhGIJGK1rh/xOgHfEvLbRNQcY23aTCOsi9+qm+Mz7fgunPdE/RyEj84AK8b5/X7
	 IEVNxadAs6pNM5aCXjcAW5iQATcr4WOAerXSgTjtSMVT/caW1NM1y9Khl8Qr+hYXzy
	 SfkdmwwCXbPwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54ADBC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166847405434.418.18368274656988339650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2488eea1ee3b7a02e2568c3da3acf36b032b922694bd44262ece4ad6bfcc0e
Date: Tue, 15 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668474054
