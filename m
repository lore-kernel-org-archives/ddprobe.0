Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B58320C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B49C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663434053;
	bh=i3vSusyWHvOete64GO7sLu1a7kydo1reHumT7qNW2kc=;
	h=To:Subject:From:Date:From;
	b=q0/QdePmwZIdHHQ28q13ujti2FPGhg4+5RgijXhrYlkVlTiAGpjLY2ayljU+wnPbH
	 tkoKV/0qjpxsW3YA+mcnMIqm4CiTjH3pDA07BsmW34Xkb5J5XJcmL3p2phWMexpbZU
	 KYYP30KNFLujcOuwsHxiw94vUo0V1ekvf8ROAdGP8ji1jJtqMw5+kveFxsV8rvXfJm
	 VdU163DQ5+7eUlEsoK/Enb4zAVclpaf9KRaFVpQuL8FEk2mhAT/sYh4GAYDZZdmahu
	 9cXz3Drr5u3bse159IKMXyiug9ICzr9RRT1tDMRO/CuiJxguse+Jz2tc+t8YNmNY2/
	 rkGRmXM7oE6og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5250DECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343405332.23355.14840153018382336875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7931779cf5e59d4b3cace77dc72a55610177d93b0bea8c3ad8b1629e767fd3
Date: Sat, 17 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663434053
