Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DAE800
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6414FC433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666670453;
	bh=+g+DW78chJE5dH6HqIYgeeMNcW+/wi+NZjmjk9PMvZs=;
	h=To:Subject:From:Date:From;
	b=UIB7r7D5vhcTGDUWm1dR2mQrjjA16ps364ovZLIGCLJy4i/yH2PcilZ3bAFQHwJy+
	 RfarOKO1wdtaTDV9ozd5AL7Do7i1MkJhtYqeBIF46gqrH5kYlI8hm/nCkscgNj9PP/
	 h8rAY0aAPIIdqvsrigEDbW9khfBhON0rIPNeNkw0NYsqZVrt8uejDvDgPx4biHKNI4
	 XYPzT3tjNTl6rczVsRo+6StOqUvPbWgcrYIPwG2ztKJs5b+hNvW2xGMG36/HmfKp2L
	 ffdKAgbt06XdIM2yH2nzWt/vJojcrI/psc6Cmrsdku5nLfj1GPIZ2qo1LKqHpSBwy5
	 6B7Z3jYXLMWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E233C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166667045331.32710.14678240156540652498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8533f7a79da866ec683d8b542f1a0f9ed5ea22959a3e6589df1b1b59cbdef66d
Date: Tue, 25 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666670453
