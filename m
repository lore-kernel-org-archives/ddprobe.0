Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F3462A
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D83C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669789854;
	bh=WOmxh+qXK9s5p4tph2o32yl4DlKLTKbDT26vXtMkSkM=;
	h=To:Subject:From:Date:From;
	b=a1j7WWbkifyFM66C63ziT9Jf9Tyi198YFIsh+knp10ikc7/ZgTBMhKXc03u+2tbua
	 8SMWhtkUYjPjsjKPuyzs7z9EX10FeKfsN/DfHv3JYXaJCMpbSsjVs/jHp8WF0Ho0vu
	 cJQmCEQexbYWml57/EX7pHOYvOgnKH39wt9dsK0nJX258a9J01w5vIuJyT/jETMuu2
	 jqOPloyI2FjsmLmc0lZ3xYWwYauOMj8w2MYKw9tuEpr42l974E4OI2qs17jjx4pLf5
	 HiOVc9kg7cPcn9PRCYxM+NDtRMRQhYMIxwOM8292VQhzZ8Ib6Jo5yKbf27jk6l7uaD
	 7mEpyjPmKBugQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1E1C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166978985431.29951.6163967120868854141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b6bc7ba0eeb09c3687c4073333e6f2b71cb662ac2349b16cd2b70370a8fe11
Date: Wed, 30 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669789854
