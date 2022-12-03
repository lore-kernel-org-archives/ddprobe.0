Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B137B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724F3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670103054;
	bh=/sFCVpwXrjZhl9P1aO+Jx+OFWH42wNdRpLaqQKUg9bg=;
	h=To:Subject:From:Date:From;
	b=B5CHPe51mPcoWcHbiJSNItsSlsGhWk6QYsf0O0DW10b9no85G4yzeDdfdUVZKtw/8
	 PeFyeDqzXrTmsODw41fR/OHUtSeXZHePiP2cS0fcARi7z4RAd0WStmimMTgv3jQE39
	 AZgG7E7LSVID26PfYqHWGgicrO0BXY4YFPtjfLfLwCeWFFOPsmVkTLwtsCksSA6Z9W
	 XDjxXZdyvMr5HYcc9tyx8LQTpn1puTeiPf8/4X9veH8mRYXvkEQwFCxSX0HfP7VWyV
	 nz6EHThWUScR8qjMttYyjEvX2JCO5ETf0NaaXL+LqCid9yJQiLBYerwE1ZELgMBJ5g
	 K1a1cuJci1Sjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D6CC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167010305434.8108.7930938214911291224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd106bbe9d4eb41c4908c3202ba72ef05348ec7614bf3c0b855d57ed6eec78d
Date: Sat, 03 Dec 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670103054
