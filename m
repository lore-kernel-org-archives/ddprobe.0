Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17C27E7
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C076C433B5
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667436654;
	bh=3mzb0iX+A2ibv1bCoSS7Eypd6APjf3THzDlVgM2AEwQ=;
	h=To:Subject:From:Date:From;
	b=DogJitB0fQ3xx54kAcR0JgaL9AcQ9nn8RP1Cd+bhK4+Y8rZP66BckcNoZUlJJMOV+
	 dPk55JhtFTLZfvEOMIKiJjXGyctf7aSUCaghbRebQe5HQsazaoHvi4pYN7SIwfePQN
	 YYyzrKA9O3ZWH35Oe262oRg4FyCfyw3/vOSvecp6Fnk9uxlZbO/hLGrAUygqQjwvRZ
	 PXq6Lyx87PFv4crmT8hr52PwUihw5nTtI725CtjqRGA3InmM+wXa37AdyoEYxG/ke2
	 e0+Wpe1aEneoEeh9rPEX4/CGHitzafY7dy9+63BFCYj2iCIlRqz8oJthzGBeg30ylR
	 +1MN9t7ya4RmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5529AC4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166743665433.28337.9154920170434933903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5b3723248905cfce73f0fb6092aad2d4cd3ca59215452234d196039851d3b7
Date: Thu, 03 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667436654
