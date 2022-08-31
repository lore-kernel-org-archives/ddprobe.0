Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BD97E1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5B2C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661934053;
	bh=oZPPO2AKgQLw/yQ4Be9ZAqNvD7l+I7iU6MdKk7R1EqQ=;
	h=To:Subject:From:Date:From;
	b=K7JQK0nvD/wwyfnjXA93ZHOdB3LQZgqr7tkF7y8RntoOVHoQ+0OF7ADr2u8i5JFzU
	 75eQr6tyh5LdnezisQuQnkuol+tOOBFzEAv9b8AsdYL2iBckPuDJRv+uEwvjizdZzM
	 k1hGgcJmoKU91s5stNzYd7ojI3C+xm4H7l01Ci8FHX6/62sah98uXiXbVFJJlFii0f
	 Xsp/lDR+DGk3NxSl3K5Y4mWdgAutMn6nQH2T2f91M5u7cDDJ8DhCVHJMgvESTShkjn
	 27lZGlMpN6RYAm6RQXF9MGwkCuVicud4pZUUPYkgNGocyNePlVupQKNJ6jR2Tqe79L
	 ecR0H9QJpvM0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507E4ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193405332.4543.6364351677807245138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc348474b2a4f66d80d1247a3f26eb52f92f2f2cba3d8b0ad87644b90c1cbd9a
Date: Wed, 31 Aug 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661934053
