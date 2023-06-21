Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5560AF9D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 17:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADE4C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687369988;
	bh=wM5awR0p5VozUb1CglfJEIYeNI5ShkLG8y5AhZMrs4E=;
	h=To:Subject:From:Date:From;
	b=RuEkwqpuqIJ7vavCkyes+J2W1HgUaiHYtMt0J64/BUl2fneAIumzWLo5LUfO/pXgF
	 tOPLSp2G4r9L1RoXy6zcYXLsqjoSM6cWNB9h8YVHL7JRMz2odi2er4IUu96UVIyJQg
	 rwrz52UeGPSZDcCKoQiobn7l87QiCgTTHla2xn49x6q5NgJJBrSdhdTTJXrlxwVtrw
	 TYl8JHdxnud7SMBe0dFkdAVZPB+dGFcrPvv3Wnir4Dh6bKU5r+GyS1QR5Xp4TlHKOP
	 mtklfAGMgycyMIC17LXcMcs0K7GZ8fEJacaGh/TOAs8lmIq2riMRfwuD5OOl6yHaes
	 l8QY9WZC7vP5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA28CEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168736998875.30657.5685473215335258290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b896786bbbcefbcaeb9cd5bbf2c324c2ab74a7e4a4331d87a1d7262bf7a9b9
Date: Wed, 21 Jun 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687369988
