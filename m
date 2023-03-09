Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC947E6
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 05:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE68C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 05:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678341065;
	bh=Dk/HjOOwWPqkZcD5R+tsMjDPCpXDvkXI4kh0wI5szmw=;
	h=To:Subject:From:Date:From;
	b=N5ueZopXL4f5xpL4bJ+3RlvasPVdP4sdkA8cMVry9v2Up/bgOZYBIhslL1dLBRAi5
	 ST9w+sMV1E1nBmmu4rL5E+dZiXXkvoJ74ThHyViEC+eKxnaFbcDX0bQuFvwixZT3gM
	 FSZLaTaJSfI5qkqPOw2qmzYDzSSqwYxUrElvfACUDkYxVkMur+9MxYJc1E1IZPLsff
	 Hxq0pkCidW2JHOuA2ydfEAReuGPw0mJHwDBS4uEH50PsTTuj18fXm9CnmJKuJ4N2Uk
	 75bRSDOtAW4yDc6023Cq5ny8WjSxQKUCW3HbstTgMoObdyQ5zwDjjow/HZ3spHoDa1
	 UtHfpC7LsQujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA26C64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 05:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167834106575.7994.5920540283954562878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2476bb5cd13672caf3c5f7ff2fcfc752a6dfea287a9dabc58804a005d41b3c87
Date: Thu, 09 Mar 2023 05:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678341065
