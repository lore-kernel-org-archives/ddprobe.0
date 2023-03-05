Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A79023CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 11:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C0CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 11:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678015025;
	bh=G2tqKsYXSb7bfUw0opI/FLzIBkBe5bMJRQMNFhhi4Ew=;
	h=To:Subject:From:Date:From;
	b=WkBx8qa1Pcu0Xag1Cl6iJJNMClJZPHHRQvHpfnvgtN7sbfjsjaCO8OZUKXoXHMQe1
	 NTAMaemGDnTvr5fdcioT4pANOuSxL1SbBMsEJ9QRPigqhal34mwZqbFEdd9KnB8Kxw
	 6DeiUVWG3Y66miltlvKyd79HjGnEKWv93yIlRznwTmOFGKms6AnCv2W32r6nSBIsYD
	 JnInNd2TCxhf194llpjUVCQkZI6JXwCVubc7S0hhm6HWY414QuLGAXaeRX5hH4tEHO
	 DnwbdLGXl32Wnj5bt2k5AG9DLuipk3ShMTHwk25/r3d5t5OkMBYxr2NxFmeJW7ytU8
	 gF8EfAmZbDjEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96AAC678DB
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 11:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167801502575.10206.12523453708550906774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfffe4fe61fac240007268f5239892f40a0d761d2fb46607e971db1f30be28e0
Date: Sun, 05 Mar 2023 11:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678015025
