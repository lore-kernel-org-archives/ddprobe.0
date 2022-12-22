Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F1315A9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815B0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671673287;
	bh=L2kZ7Ib7sRhV/t8EPBzv/lUbr/U2qTifSj7KUx92D7M=;
	h=To:Subject:From:Date:From;
	b=RbUnVO0YGIUNqYOS3qO+jUNMUfhQoSILP+0L4+VFIpnM8pZd41AA9MrO5+AHyS+zC
	 0Q5wBJOsQxBpoZRCT4oPjE4Y+7uMXU/waFqLULKEhIvHRkS7IkYTpZCAPT3nnJZg9U
	 dm957Ur9saXN7LgXdesOweRO6B8sYGdtXOqg2Vc6gfg2lP1Sp19w0ezD+j5ZcX8eY2
	 CMxqChLpOW/t3m4DIqfjEfo5iGw86/GeScwIPbSWg+WuZk7O6wE4FKKG9fsdgQi0x9
	 WfkKO9mKYQeZ2hzuaAu8pZbOLdCtVkVeK3WXoHOwWwcQTQs/DfcCv2pg/3FTjnDEEB
	 aJ8x5iQqrKRoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B46C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167328742.7331.17195226693407781159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb86242c7f62c3c766b80f59e3e2a7c5f942c8d6fb5422afe0216b8e21d069a
Date: Thu, 22 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671673287
