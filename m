Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13872916
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB36C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669303254;
	bh=eARASfQP/WATOzkaLz21h/RiOEuySPwn+yR2M0ipACg=;
	h=To:Subject:From:Date:From;
	b=d1XUMJlSqwg0XVFF2ehifT48PdmTFOQZCzcrkLnjpT2elfgH0iF9j7wP8k1TXWGol
	 QLtgzu6vEahMrW31qUhbskajuWvtgk/pnLdIgCLE6ct3oxSbh6I5VfU9CLAPZfcyQe
	 YBKKfmKsDFOafXEC2YHJYkt6S87JhGJaddg5c2g+SP2aQgRxmeQERRLT1y/355Dz8c
	 oyvopLv3BN/0NpDkC7Ee12gATXlpjpGyltaH90P2DsPr6Mou2T4TLq6p0QNn4SYOOm
	 51DLu90wl9xvixKi0aVpyDA6Sdy/X/c+7wpj1nb8TQlQOPiUa9wPEqjBs2sbPWzKUI
	 7+0SPQTMEqBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591A8C43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930325435.8482.7208126972885548669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b13e7288c0aea25edec555d432b4f2e6aabdc0bea07ae30dbbc02059e57d443
Date: Thu, 24 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669303254
