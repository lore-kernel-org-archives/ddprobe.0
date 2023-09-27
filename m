Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5221E1A5B1
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB74C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695843968;
	bh=4BZ1Mc8YYshZy96P4P3rs/ZL2ln+d68LjJFtcNCECHg=;
	h=To:Subject:From:Date:From;
	b=BEusXeWDC8tnQ6mTZbgHlGsKixEBmnhf/Z16ocw3PnOrbCEo+Gu8bMjTTQCJo1YHX
	 GV481ezmYe40nbJVtb66xpOrBZAQSuUWjxd9nc0y4GMvkqU9OR17p3LOjeGdtGRegs
	 /RNvfahcZcR4iXTH9KoHY4HJKP8CPLu2juT35+gXx5UUyBY1MQrgj+sJnLEfYZVjS9
	 OrSg+72zpqjsVJzhseO4IKYk5KZOHvXg6akVrSBCRVToZESOOnPAcoHvLZP/1bHTko
	 DKghf3FttooDf7M739vNjUTr6V+UJgMedgnWUrxIbDgC2PdnlOMAdL7mdW1A1ydiqK
	 WkgYbxEGQeLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD975E82CC3
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169584396870.27488.9622901738137274545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fffc2366535788c0d39a9c5a5cdf772d4e8b39608926a12088061c773fa034
Date: Wed, 27 Sep 2023 19:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695843968
