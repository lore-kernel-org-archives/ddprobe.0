Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2E1370
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CADBC43470
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665793853;
	bh=frX8aup9O6BoMUJY3dxShNf7xijs4/ud+Z/AY4rKIrI=;
	h=To:Subject:From:Date:From;
	b=m89cBffzOFqzWzHT/LWmMxlQhGF5eyjQ7ZnLIRcVzM4KXon/8qfHU9VPUr3scVMXO
	 Fcbm/+NVEqOiulL8sY2SoVbVe14EzcDBmf+QfDPJr3X25ssvSmC9X5wzWzLaQpOxRY
	 LwYDMUvQSoHUUYutagBsuLrjeXV7Vml8oGzLX6p8xxK/bzI7+McVDe4uBHQfwsK3uO
	 9GvzkRmAnSL9vovf2MbEym9pySML21fDQEjyTe0nsSknXX6zsUBfCXxSHz/CUjxj6S
	 jsYuh/Dr0sqhgrz+Yy7nlYUHSEbIrwTDrF447zRGzBv4pjh5vPU8zaYdC2l43oSw2E
	 GJtSSezufc/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51860C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579385332.1032.4259385932756434187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3141b12b233000ecaa84eafe0581f98cb8224a0968594d0db6a9e9fe4d1082
Date: Sat, 15 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665793853
