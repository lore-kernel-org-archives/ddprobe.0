Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B9C2F46
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C131EC433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688142788;
	bh=J5cUTMmBXJlIlwHFliOUBtYi9V0Tzsd+XqEOV56Qdpw=;
	h=To:Subject:From:Date:From;
	b=Bf2RnPdW5DG0hkOmlLx43WkjPNrfZA95B4r9NEynr/2WgCa1PzxWm9es/n4dXej1D
	 qM9y03ewIh+V0DoNCHnrvjZG4AOfI+aKCtSHEJkfAXxioHHyifatjSiBefs/RHaL6C
	 RHSJqdcdsHc4kinHARxG2s2646iT4KmE3PThfIgiI1HP7WrpkbNEP/VNEJl6FKS7EF
	 h4ujjF2xstL+i/m7sxJyvgAhfvW28b1MeyFiv4/cCKVTkyTOKtzx6t5gBC2jCjpMOa
	 Wlsq4iR5L5P6Q6EOOxhpDBW/QKgQw6IwCrVjQxTQfsbRac5ULfJFovQkXgd80klxC2
	 X5Y1y+JF3dslw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A332AEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168814278866.29529.16803392935020449161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4213576c9c79e8172c587d11ac6fbd2ba1500536649686926898f9fe59caac9
Date: Fri, 30 Jun 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688142788
