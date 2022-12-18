Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA1C632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E61CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671325887;
	bh=idZb1o+nGwRBNerh/+7OJw6ZXbcApBWvOl60pcP3ziY=;
	h=To:Subject:From:Date:From;
	b=K02GP/f3srsa3tc+97vB7Lv53bDGMMW7HtU0ltXCkMxbCIys8cyqm7fY+/HbhIMI+
	 cnUgDEmfg0xUS45ODQU34RVsetE9XlfPz+uXDJ25MDVe3CdtNj3ouXn7NkK5nbCxId
	 xBVT0hAXxdliv/PsdvVEgWZsHqzgZnD9PGow89Gdiim/TjuZ1TyZj3uzLdORGHaJDz
	 SR5VLOt9AV4NcNM+oXvKFyXK4XdC0KGdbw6WgIxDDsoju+aKfWedY7mDv+2+TV9gpi
	 MfkAhDvCfHuk5Cz6Ipcqp4yPTTlw5bRzNl+FK42Ls8UKvq9eUFfdH7EuSY5R7L0VAd
	 9j0LTUquor8Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69009C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132588742.16752.17485247172876408511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b079ab79dccaec22745ff143b386e86b67dd3bacce5347c0f0857faf217d62ee
Date: Sun, 18 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671325887
