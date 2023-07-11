Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B18C1ED45
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4387C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689119828;
	bh=pSsw5fq197tm/o8oF4obdwfHXGuKJdNh4zkqxZSDbuc=;
	h=To:Subject:From:Date:From;
	b=Qm/cAGmSWeUB3LaTPOHHY6IEEfsGd82xcttx/rLbDvoyWIRm5WJa7k1T2aJOQyvnc
	 sKysb1jXdlvsg8ymM9O7aFAuUHQzzWiIVCR4fRlsfTp69M7kTsrCDMUewzlozaJ+Yx
	 /c4jsuNArzKPOyA+uIl7hbx3gfMFR26oSfF1lyzgq7Y4/HQCPd44EAvvBKDPqYFP6u
	 ZJMeIao5KNEZRkyHROcjeEXrQojGHtsgMjkSOdszMaAGBjtOZ2aKHh0e1GtgSZ6LUe
	 1Axrk76ziTPmDB3rP44LImHF0Fb8e5n/7EhtKw7LnDaFg+bJnmZQO2/osD9zalnEgg
	 fpFfrOYRhcblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7413EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911982867.29050.2494064412360581549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07a7e52e1e713783c206b3927f5b372f7c8fe905186f9a0ea24aaf1ac860b8d
Date: Tue, 11 Jul 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689119828
