Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC9418AE1
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 09:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0818C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 09:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690018328;
	bh=L0lbZV3jNDKZdvSyZ88EzOdJC9J/NXUEcm8HqASX6pc=;
	h=To:Subject:From:Date:From;
	b=LuC3ELThc8Xby0y8PfxaLEupcEtuWlZU83K2Dz8SJUSbyFvdMtxFfQQ7pHeaSCSrq
	 yO15qfFuffyEfVrIX3+dupB8S3GqhckQEzamQH8w3BnFl6K4Ivlvvpb1BsqZLzyK3x
	 3KqV4zb0Na4atF4M/s8Fm4QXyHWe609N/p+Qi74kE+uWlCxWRRfnSriGg2K4C/b40m
	 wwJ9F7dCDzijkJOhdYpmiYdxJMeDDNyKum0CSSqRirpWOPgXm8so+GYzxNBvk2CoSw
	 hqD+txeTZcx0ANaFdh+dhsjOb7IHabDaif4y69l1mzhqjUWPEc4XlcIK2xlYHufUP6
	 NJkK5PanbMjJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39E2EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 09:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169001832870.13552.5879393530619705879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc83af14310312a37b5d62612428274a012271355bab938ef1118cae87829f9f
Date: Sat, 22 Jul 2023 09:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690018328
