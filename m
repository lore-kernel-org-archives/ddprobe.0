Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85FD2580
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A564C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663838453;
	bh=bkqpJNs26W7/ipYr+oXYwEBHpnLIvEqEKl8gMVDD/Sc=;
	h=To:Subject:From:Date:From;
	b=Hqf6wYCz/iyUl+U+J0lHU920ZwO5RnkhH1Q2BFRM8sEhCrqR36u/PPB+xsZmwNr1S
	 Ah8InY6N+45nYLR7OFg8P53OHUJDepEAW/+a1Ndm5Pl7ItrHVXVbzrmx2v2axPyTUQ
	 Mwodeh+NrNTXMVHgpYO/C35ilkPGVDvMfHS3TIXEfbiwrGJUG579fiSbl+SmrN/CAv
	 u+6/ZgT9nwF3OQCq6RJOuu4kUjpjV6n5MGTP78zoBTMnpLOC/UNBMsCZS/Bs58rVhU
	 JCfV/RIUC7nInUtllPeFbMrw6mnct5J/RhDFFddj1qk9nb2L+K0H+62zWXtRXo8NUe
	 FCSkxjikn2LOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E852C6FA8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383845331.2933.5309188186223758140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e6d4e0fa5413c9469fcba0644d0d18fcff79a8f05e3becd79ef907d248ff4b
Date: Thu, 22 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663838453
