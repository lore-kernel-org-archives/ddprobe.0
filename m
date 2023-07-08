Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750A810E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD887C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688854628;
	bh=9wRfTzp+7TZVtKiyjIRW9DMShhzRs0NsBXIBTlLAb80=;
	h=To:Subject:From:Date:From;
	b=AIMJmUdQTIrLRzvUFDGi5wihqJcHHJ+pLIlUOhQaP1OFpvOdJLsK59YYQSJImhr+8
	 VRItfqx/W+tZrMw+SFmDsryHe3yUn5PRQX/bbPdgLjs1yb+pFpp7pMSqXSJO7doUk8
	 zk5SbjRtkuaqZpNgcaKSuCOWgA4TRlbuw+hoHCzhPdK8dTD9aEeCmxSshkAGPCMjbW
	 8QduGI2OG8KoUq95vgd+s/N+ZAiWVyMMx0VFITGHQvT9FLtQChtVbNDd2NwmTWsdGv
	 To5Yt8NnogH8/MkX0aOX+QDdsN5okfB9N0NBMbO5Z6a48Tk+O+jtVaVuUbhZPgIwAE
	 4AMviwBXDSs9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C5AEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168885462875.28737.13666900983403975736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcb711f15ed3ceb4f1d537f4c7b9f6988dee31e9b8ce341a1476d1f90cf7cde
Date: Sat, 08 Jul 2023 22:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688854628
