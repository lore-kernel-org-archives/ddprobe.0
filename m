Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56E1364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749AAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669606854;
	bh=jUKD/Tz42NTDMD7TPqd32GSzC+Yd1ksEBHKlVcVSgKs=;
	h=To:Subject:From:Date:From;
	b=A6p7YzZ3KJwbKed5GqJ45EX+nG+wv+OesOysTxWe3ItxgbYrgUyvehYrvMvQGOgCA
	 c7s6i/h2X4yXnyESNK/KANG9WH+4TwnIpz2l3j0khsKj/ZuX9JbSqwRpAASr7iSXPG
	 YfFdl5E6ZjjCKAgzfwre/j3m6VjY0F/MaPLaebNOyMTttQttrgrDE/0UHbDc4K2J70
	 3pEhmo3ZK+f1+yQwqEOMhPDcROgpUCyWK9pigTRDqn3roVXou4TScBBUy7MxBvSJSL
	 IwmBvlrLKYlKOvocKiKpTe6etgiDWFXCOq8Kbqx9AmrK4ZBbYfh6ynZ0oiqbhb2Ona
	 aVzIf4n9zRbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E63C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960685432.10321.15970627539239171769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f38d06dbe71914d4f959e66c920c2b624951261f6352745d9a577cb387a2a7
Date: Mon, 28 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669606854
