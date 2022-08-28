Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67AD2F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690F6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661716252;
	bh=y4J1629fGSVJ2aErOmqaNJOrgyw/WoHDenyKXAAtAP4=;
	h=To:Subject:From:Date:From;
	b=eA3rJ7c4zcptOkeNw+grV3d/ZVEIvPZw12PKXhyz63rThwxq0pMHfm2GLdGfZ0Cpk
	 V/m8Zzay2mvcITMyEakkLpWj7hgoQ9lpOH8SHPmZLqA2mSOBRtc5wW6DDeNjIcgRC2
	 ePbH7unKjEY76srjeZm2Mzzh4R+DBKNppLe7FJVMWWF7sXmO+iR3/gPfNbOlc/AsbP
	 C1KbnTMADzIEnTLPDy7vCfRSIr18Dx0owFoKx9Gor+2SP0Qb9T1q17ebyK7QGPtT26
	 A7xNWlDMe5bfz+QYJVHJXKwk3Ug1j/Fc0Ek65RY1ru5nvAGjK6SjOc+GfXCaSmUL64
	 S7x3Z06a9scOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD52C0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171625232.22199.2623703296662177059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edcfb1fae9804793308d60f3357bcd838acff2ac13676757f2b08af8f46a3f0
Date: Sun, 28 Aug 2022 19:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661716252
