Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596AF7F9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83CAC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687607588;
	bh=puL+K82t64SW8rayYtKDWyTRRDg+1LKZU43X15DKtVI=;
	h=To:Subject:From:Date:From;
	b=rcR76LpHXUbG3s9ma3Fa2IfzbEvqPUU9/xwys7+Imve9KSQYCem4+YEirIF1ycqSa
	 bwv7RUmNFEs00FNtDdfBQjF5J/8EFFogSDOHioiBCXkf9CL0n2795wNZR5t8l1Whix
	 +PU3YGlcXXFnBr6FbqbEUPF5O1OqDOYi7B3uqWH5e/qd1yRW0vmlAXxTchXP7xPmVA
	 poRgwpQkT7s1aQuxjZMl/GCpYk+NJjEk2LBPiLcH/anGXJgwZUzDPWd9ev/ILc9U20
	 ARtPp3D6FvL/N0Bj+lNptFWnt+22vGniwjqSp49aTpd4IJOV0dMVobiuUd5wGNVJMh
	 qAdbLcBLwqHXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ECFEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760758867.6476.1276265472141083703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5409105aadae39a6ea5029dffa162dd511264490cb1f7a654def03f86d8a297
Date: Sat, 24 Jun 2023 11:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687607588
