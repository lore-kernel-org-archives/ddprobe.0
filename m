Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418A9442D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 15:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A3AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680448505;
	bh=XJBj5tXN/L8QzKwiv3a4ahOlbnseTf3Kx4ylMS/Ryaw=;
	h=To:Subject:From:Date:From;
	b=mAVg/CE2eXU7OPoMtPWw+LrCyAvU+aiobPLnjar9+H3w/AUSDYpMbGc7S7f9iCl0x
	 ZEylMY/HvW7TMq834SC2TrFxry2lgLiLbUV1yUzhx9diqVykHiAVDNZr66rUK7M8Ry
	 bqbGgSyEmwAbaA43+x/Rjka/Ak0Rx7MgAFVyXjd9zUUfeY8+QMGw/CXngrrMmlsnf/
	 +wd2fzY1jon3CLui7riXaZQnD+vgzwiqky97K0weFmH71Vzkt6r9ktcRnXE+w85Q0H
	 umax+++nhLEae86G4r9Q3VEwqVWaP/65P27vom4IaSTBdpjpFrHoczRbPwNCZmg9gd
	 JIgKyMGUlXmEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C51C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 15:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168044850580.31481.17002280469910211193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3695c53a21a38ca7bc345b6443847089d14554bae18e04b9ff49ab5aeb0fbb
Date: Sun, 02 Apr 2023 15:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680448505
