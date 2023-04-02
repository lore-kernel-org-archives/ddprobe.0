Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FFF15A7
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 02:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D621EC433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 02:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680403505;
	bh=/o36iTy//Q3RdG1UeFdiWpUGucE5QVT5tnVSwQ2lcS8=;
	h=To:Subject:From:Date:From;
	b=m1LD2Z7UdQb1OXbm4Q3kHEcCtzKf1/6JoivqAuYx0iXfqc89MyYCxUfR/gJ2mNszw
	 VfP4NCWpUWCpBTK+eRQRXGkn+XR8+ds5ISHdnVMOk/m4Ml/an2o5t6KeXtu7N7CuIe
	 0M7Bh2YntjFcRk3pw23CZglJ1vAspPxDg94vyR0GhkyU8cULjbC4tG+Kit4qiDYmah
	 0H4YxfdB693uTBt9VwcyOTKnBPf8ZD0FTRHKF3eofTIQLaBcG1yavfx4yVUDpgP1lG
	 mT8VJ4gcmHxq3T/17mcI06h1IFtL6ox7/IgjQ9F5/edkm8Nq+Ui1daWXFAPOnSi728
	 zeP56AzvgQkRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C2FC761AF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 02:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168040350574.29093.17470373182811135840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7436766797eefa3a7f655ed2e13444301090feedb8a5c101da591df1e9c99b03
Date: Sun, 02 Apr 2023 02:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680403505
