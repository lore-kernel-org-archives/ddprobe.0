Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DABC9460
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 14:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2183C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 14:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679407685;
	bh=HmR+NYcRchMcyGAcJa69mjVXCOsM2t/5VikTn4CW9SU=;
	h=To:Subject:From:Date:From;
	b=r1ZgnWW699WEZzYrd9oTkyuRIgs2oGYBf6spG1ybNINYp5vFpvsYdvVK5KWIJ6brm
	 58RL6VDN/sSL3nZQQw4tWQIxoLcsJem7QvL/0y7TmrWqJcfT99wq+7fgQMNysfakTb
	 GnLBbLGyE8oJaW863y/+65x4BszB/uFKz8XG4xJdXQcdqWLPKOtsl37h7W0Rw2XGVs
	 SPLrjs+z+NdnjAu1iOS6RUgPfLig9D9OvRsnBD4jc6HwkUGq+urYRPWdNQrlBRt/A5
	 xdqFGVK+5SWfmiI6AATYpxtvUmQawSvn/VJ6ezlR+iBC277fCSMUMB0yoRgny9sFR4
	 PfMqasLHfgOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7938C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 14:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167940768574.9488.2354732252057947096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3444680a66f20ae4d77ba98309e93a76e1e583df421e0416e8ce9c5d23ce14ef
Date: Tue, 21 Mar 2023 14:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679407685
