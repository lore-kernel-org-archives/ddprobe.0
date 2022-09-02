Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1BA7495
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6942EC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662156053;
	bh=x1ARDi8NcmGgl4BUNXckUCpAZoxltlxcAF1RNeX60pM=;
	h=To:Subject:From:Date:From;
	b=jTR8Ks976vAb0yPvTrSaWgXu9E3uKEcw8JUvTcNYE9mBWXitxm/fkMXJhJWBAhv3h
	 theoC/i/fE3ZRQvaUbo40hQ6d4G//phVmjAyMD6nKaVhlpwsW44FcLuZbyadd0ClWH
	 90nwYRukXMXim760HQfLHt92BgWdXfE+yGVXz6lXQUczwQJklbg59VS2JEKMuKN7Tm
	 Dq0GHYpmslnF6DViL11iEU5C0MYUk8I7G5RkMPnYqfO34IM2X2rfb4JLzdzBFfAPo0
	 oOzmlW6srunJlTcJKB1PACvaLj8fx/0IuiU/5usTpBJ68ElzWxxDTrr/Hbr35wVbyl
	 spYQT13C4AW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F278ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166215605331.19448.12067076230349429770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15748f1134a44cbb41bdd6e0ac53c215cb6b234cb1283198f05c2b05bbc0c106
Date: Fri, 02 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662156053
