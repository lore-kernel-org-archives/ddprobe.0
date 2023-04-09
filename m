Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A3F19A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 05:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1297C433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 05:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681019465;
	bh=YCmTGEJv9gvSIZ32Ag9T+hyXVeI6ZLyiwproxmT7PIU=;
	h=To:Subject:From:Date:From;
	b=m3dfWYN7Z6niLMeAtGzm9c4HkYyDOy89DEYECWsRJ1BqOe15eCTtFeg922qgaSNwi
	 TyLPIcE0NJvFYoat0Su6eJ4mGoU55M1sKqeb1IivldzAzsohI2QgwP+9zDYbgqpHa/
	 3SadZ+B8T4qA2pPEZcKLuJjj1JK0b6DxEZB0jREJ84pSCQzOjmtJW58dqZBVC0Uk85
	 IdFWqdj8z2EccGNUdt2XrYTy+7HtQ2oT+6h7JILti+5dV5kModpoYoknW4Zyxpj98Z
	 cPUbMKUcJ7TN8EZLJZzDncE02SnobO6DIF2iAN5ehXd/fp+vOG0rgIRGr0aAPKRsmX
	 7gpNreFc4aWtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C73C761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 05:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168101946575.18451.6330628117773704626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d830100eba130ee5412ad2caf394aadcfe7ad71c7c45fb1da2deafc4edc7cb
Date: Sun, 09 Apr 2023 05:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681019465
