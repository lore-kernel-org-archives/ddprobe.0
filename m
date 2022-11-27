Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4F117CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DF9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669552254;
	bh=reV5hYKvZVsVq8l5z3ycTzHFXVnj21nwyRsdqupeTXg=;
	h=To:Subject:From:Date:From;
	b=pohhWaualp72Fo62sqZPkOeUHVpney1+EdCgr7Lk+m/SFVg/331vxGm8RCJca2D9C
	 ZMVACXsN5lEcRwpEoeThMbbTeOhM9Rxd1notT+L6xh2TzTgsizNdJRNaqhQZEeuNLj
	 HnLidCRbdMeSctgODqIK4LZRXEQVxqdnwaTbyD5MC8J87XiKYuiQGRy4hObxFHgHfV
	 qGoF8u99wJTv0610QVmwM8q5O7K5ut5C47031qXS98i9eZoo/8v0WuvUdb3c0e5sYq
	 27WDZ7X1UK6Iwv7W89zDguPJ81kUJ3BUSHV8juiYZynm3I3k4vl9dg0Hef/1iS54kf
	 uooHh1LqqSd/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC2EC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955225435.6403.4682395517400339050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62246fe6dc9f20ca5f892f68c29b30ebf44410d5b64b93a1006b40ff7775cb69
Date: Sun, 27 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669552254
