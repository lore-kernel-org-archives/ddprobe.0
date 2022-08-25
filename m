Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31BF1FA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACE7C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661412652;
	bh=1LhilYR828VYftTpy0gr8E+d9c1FDfTI6kfZQeNWm6k=;
	h=To:Subject:From:Date:From;
	b=VjYZfRTiTWZPjedLTCwKaKmkxISgyHNQAb6TA6ML8n9a0gjDYXm+Ie/2cF6fjyies
	 nMnbEbPiQEXC4FVW/EDnD1hkG7OwmET6XfC27BhlKFeanoj/2agguH+Bf9yfX5BCDV
	 B0WI6fs6e/9tL8m4zy9Ot7vI+E3FQOVugKoU2PxYr0wG9ynmVeBSKQxdVwn1SJIe4y
	 VPfdI3/QSY2os3isqTguuOx5YFjr34dhlEpnvmLc2CBLqoMmLh6Fd5ZMI88QepQpjX
	 IuaTVT3ImdhpV0rFAy2ZIHX6zrBie1Ucz7qWQvhvDSVWdWvqN9cstSngx9MdAq/tyi
	 Sw51dEGxye6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A90EC28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141265236.31908.9445001665349659012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10b2965e79ec36ef1de24a5173b8d16d2896e2f166095064bbab385f6edea79
Date: Thu, 25 Aug 2022 07:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661412652
