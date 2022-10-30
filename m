Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D69190
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E307C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667118654;
	bh=yHME7Zlp88RsYUPGxCQXybRh22FKl/QTBIprv8N3eaM=;
	h=To:Subject:From:Date:From;
	b=XrdUHQ1cKxGzNHG9e14RVWfMtp4u91rbkHlxXdw9uS17U87o1/7SRmnmf6JRdHLtS
	 SoIxeWRNshRP8yWNVh2ofLhyopOTMn40vp7iNIGmoy3WMqPUmbTgfi+ga3aekMmWqk
	 i5FBFTy768bkJCL5dk/VRnPT2av3hH71IaiiKfrb8lORn6lO67YioJunl7UVNqmJjF
	 jaXH6JekESOYLt2WOAu30rPib0NAP5mXM+Lhr8RKkFrRiXDyW4zd5Nu5+qiLDkztdE
	 bQD9irq6+6Qfp/1v0D5dB2Ro673tmsmaLOfTZ1BQgQLR9aUetBEw2B+fJKhTTIjAot
	 aA806k5LPvMbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5377CFA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166711865433.22115.17692198795235160011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b34067052b1679d3c75cd36788a225ec01b82c0b9ebc3680da9c8bb52171f1
Date: Sun, 30 Oct 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667118654
