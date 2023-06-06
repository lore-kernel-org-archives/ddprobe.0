Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3771ED43
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03762C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686075126;
	bh=uzjexI8NzEhaEMcYaoGsOF1Vz9V+zetrS/LNCOtj+3E=;
	h=To:Subject:From:Date:From;
	b=sj+JuCgK2voyLLe67B6PU9WSpGdw/zeDXLsNQI8/g2NMtK/aMHHM9senw4+K2+jbv
	 uH5DaZnBKMW2QC9BMUWtFFes3IU3HRVuPvy83/0bkSxI8FYpUinjy4+WCe5K6zjoiK
	 awH3xzpnUBmiHS1BJ4TKQOzZLBTTfotb3/hl8Jv2dgWeJW4wZjIbD3B5GKjlvbbxeb
	 5pcurPuWlSXQlYhSXTb8FZYLb34AVH3dKc2j0tMj2IQ2QSXMGjrbudLBNXCbL2/i+1
	 vi1IMUDnIM14G5HDSJ0IsfvQPMkDnOXDOnEy01GByTKjcpRjN6KxJPbg77+Xg+RHph
	 t3g3kBYEeJ2Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D731AC7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607512586.3812.1265801279309069467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdca2fd4621c100319616d470957e38075f011c6a376af4853c86653b75dc90
Date: Tue, 06 Jun 2023 18:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686075125
