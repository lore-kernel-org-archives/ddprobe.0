Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415B92CA5
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 23:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D66C4339B
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 23:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681340705;
	bh=/e/1lcnVYS8LqEFNjxFcUQDv26+irnm+HofZJluqZfc=;
	h=To:Subject:From:Date:From;
	b=qi6MFs4MHXLCS5A31kcgJ4M75OkgOsOrNpR2acXFMRxk+0oigIvnFGeeUDD9ypzCX
	 xFMKZfkgQLNTFSVr+dZ3qYzmPFgJT3sdA7NU8fJPBEr/H/TKb9476+koiRSyHUsfT6
	 A4NxQy16AygISG4UecSxbMjxcKmKW1zD9uHehO9GQVNLD7Tma7rRO1bseEVvEoCjYm
	 XDutfy0HY90IdfZDf3vcLhiEoAE/XesxDVpOhvNJ7eW4VnfNBmlICgCTPpkurXgQEC
	 S5FGns3nXHipKWDyslnqr0+53M4B6l52U6oykA623ELG/SqKXtA/+k8hr/IgdJ41l3
	 NSEG0DGFpUQ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D0EC7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 23:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168134070578.25034.2171626613258962453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3073b25a0492c2d072565aeb4e3cdc2ba3363afc62bd9c4e42edd1fe75c631b0
Date: Wed, 12 Apr 2023 23:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681340705
