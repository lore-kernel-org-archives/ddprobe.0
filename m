Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4BE7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 06:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B52C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 06:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677999425;
	bh=1baAdKOBZP017ux8voAAyn+kkYCj3S319geIBRgz/LA=;
	h=To:Subject:From:Date:From;
	b=OiU2mG+dRV4B0vQdLI4GmPqvgwkQyaEjChNKTju+tUPGHLztaacKpVuuPDZiOU8J0
	 ATPdrs4X6jviha6l2SrmA4I9cKwuHPdB1aBSMN6nVLYEJrxach17I69cCTqXZ3lXHn
	 S1I/uIfF+eqMF+vzngLNGo/3wo+KExB/Klx/DQqdJjY0ogQoLFUphYHNKvgN+6/2d4
	 dm4sPpb//pWO/8LUzD2uWA0075TL37bNdwQZ97vVXTraBBNsG+g7hZ5Himtoc6Hjmj
	 oywnse7LOPVRzvMcJjH6rJF7JRWd1pEe1fyy5xLeH4oUpoI9t7GrrEUGPGZyFPw7zH
	 X87DtjU5Rqdpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B28C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 06:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167799942580.650.4741484915374228111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e515fdb98f4bf1e199b92ae7d4e762b2b0878d6b4a26138fa778b9f3e965ae
Date: Sun, 05 Mar 2023 06:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677999425
