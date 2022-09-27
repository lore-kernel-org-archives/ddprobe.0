Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60EF33FE
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C86DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664294453;
	bh=kFusPpRpcSTmN7iTLEFViZdq1VunqeqZL28O4YA9Yjo=;
	h=To:Subject:From:Date:From;
	b=GL6BBCJQz6fuTGMKspLMGg9MHfbdLRyGBEZKL22q3dk87ilPUZhMVHbb693iXZZy8
	 72/+PU91f+oNUP13UofZMmZ67Nj4saNkIM/yCFZeTLnftC34R6dRdcTQ+vvU2DCaa8
	 E0JJg3aexl+X4TuwvsMzJsLt2TsJ98vjCv3nACqMP3LokXCAmWbWjWidL5uxeGwvAU
	 TNkQ2cYAZ1iTlufZIK0eCALjmqs9apiyKN8SKEZj9UFdc6q+8HXTWQEY7BfndT7b0M
	 dmIYYVT86wFe5lGJJWd1UpUcw+8M68H9juAy7DGMG9lS+M67NiFGPWo328LvdTBcN2
	 rXOGwDyehLbxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D25C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429445333.25435.13963881136512390156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56edd9226f19b052ff957c9f343a887ebd068de394e02ddac307108d6b05e717
Date: Tue, 27 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664294453
