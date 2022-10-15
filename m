Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62942904
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A497C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665866453;
	bh=b64BD1y3RzPp8YeI2yBnWflzXD0jNmgJq+X5lxv2nlw=;
	h=To:Subject:From:Date:From;
	b=g0ghPDGE+kkYcMpPMVTyptIalCs8wfJExF/XzX/DuMSwsDqfYY/NcjwN0P7ZkDiUH
	 Cak0OYzEwtvPL4o9JAc4aUC7eNEvu7AQIyzzhncRx0wBL4l8HYe52wBrAyGrZ2YVIS
	 3njrD+Ym7csyuM31IZTYhBH9woka079Yu/Y+pp1hE/VBw1NlrlF16GYED3jWJibYEZ
	 DVFR2PQRKybc0vVlh8y4tlvIhth8g4q0U0G7v3LR++dm2oIxwxS/m54Ygp5jAt0Pkh
	 NMIcgdc7HFJZEcO+MeoIKhR1XNS4BrgksWlOOBEWGaUUutCAhl6Zdd82nKtCJR6N2G
	 +Cb1Lci7fIl3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500DCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586645332.4819.7206907237434049482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10474fe94b39d79bc0c8bc06fc797ec1fc9f041e81d9c875ca608c7ecf34fc1
Date: Sat, 15 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665866453
