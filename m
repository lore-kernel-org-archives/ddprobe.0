Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4877C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8127C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674500585;
	bh=Tzm20g941tSe/FBAPDfNGsFjKtsFGLz2oX3CpuqC/xc=;
	h=To:Subject:From:Date:From;
	b=gk8pMeFqxP95n3ZfE1JEm7r+18WvOyEBXFuRh7KaeA9My6PPH59CQStDTy4PnRV/X
	 i/6bGH23ZIPM08PlRL7coAl565+y8prRqxPVvsg8gvWqQw62l/S9BnmeniHF02HXxx
	 iWrTAcn81rNRCXr0YokMsdzE6l5TqRYhfT3XQKBoGRQFRa+81U71TwwpaW98NUgRyB
	 3jpWSPmSeQ9FxAfDI8xE6RkASJ5RrTxoEQr8UP87NwfCspAbBCaw47O+dmg55Tgc0J
	 VxNqT/TJwfybw6yjthnfAL+S7A2lqj7+JCAO3A61ZE8qaQ5qYkLR6uk28tEJKezWC0
	 lEbZR9Q0eHhmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB51DC05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167450058581.14367.3741634439650376412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e7ac8ab65028e7b43400dbf096a7a1cd873829163223461788d1825a308a74
Date: Mon, 23 Jan 2023 19:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674500585
