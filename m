Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA4313731
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4985C433C9
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689340268;
	bh=Ix/+vXEhVErP0ji4DOz01tgfGeckx4D5TjICYaiO9gI=;
	h=To:Subject:From:Date:From;
	b=VBifQ0A+MZjoQXdL8TbUT3NCGM9VKGiE29Ytw1innT7SoCEfVkYkInhCK077cSU+Z
	 b6+X/RpcBV/hgX1ZceaY3sx4bLMHUWQkJ1cAIdDUwotd+tDbIFifYCP4N6WxP723wO
	 fcQQ+saPsrBj5DUJXryHEPUs/A73q88qSN2vsGKkqHhrI3t6oEvu3d2Tq3Vu7y9Hos
	 FaWzq1omjz2o0vnEdeU+Zmsm3Y99KhOorJHIr1ubr0ZqWO51TnYme/dqHpt0X2rM0W
	 Oa3i0Zq7EruxOTv7WZPzwGI2zsy5oPUMM9ZAe84XIWIxNtqydzFSsobadggi08GNkQ
	 BJBRjfZliUqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC312EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168934026869.3693.5222126726638051247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7e98075301a5aa727e63c3697f488cf58baee270d2492ba425cc6df04765b8
Date: Fri, 14 Jul 2023 13:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689340268
