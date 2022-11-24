Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C379A7472
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D47C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669315254;
	bh=bQL90JDrumtSWDO5EQ7orAVZGjSfd9xfgKxHPk1k58E=;
	h=To:Subject:From:Date:From;
	b=t/1x8rixatpztMW2x48DdXMaGMAgL7aIc/j/gBD/Q2oerqwEjklwSy1lKwvSwsrLK
	 We2kjqJcprmQujtCrTquuPN/Com81OG4sRB8nFs2raPLP+D3+GqOwPYoweAmLa8+mt
	 JgE6JqLaX7mQMzmFSX5hYsfr31B68VSTok3ThfMBhIrPKpGYrAEHnmLlT8RcVHijMs
	 meo+/s2fuOQDPIfD8oN6Uj8c3mtgtZH5A2FXecTby8LGtnf/hNyvXTThEX7nr4GLS7
	 q6hUythsrb5SpUVIFkcBFvNAnV31rvBedIhqRS4lGFcSQ7BGE2FK+qgUzWez3lmsmi
	 Qc3PE1d4LtsNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565B6C43219
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931525433.12546.9750572792145180039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1acffeb4193eda5989928e420ba0ea24ee8c22ef83c1cbfe655a88cc6b99f254
Date: Thu, 24 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669315254
