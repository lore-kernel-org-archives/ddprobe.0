Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3A246BD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 09:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB001C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 09:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690189928;
	bh=GJH0XB4gGcBsClfOPdqfeAw0xPf/JQ+fkZUyF/5kKs8=;
	h=To:Subject:From:Date:From;
	b=D751/Y8COn/no0fBw5PCnHhbUTi48Izk39tqATxNiopRIzR7ZAeriqICTfTa6S5O6
	 G553FpQlw1lCRY366tUk2Lm3LYSDhElQwI3vCwQF9MU+cNC7ctmiQuQVcVSKdM8XGD
	 eWbfzrqjBYL6SctfccvmCqwiAmioe/oDflGx2r3n1sVONqcCDU+X91u2DX7QI99vNX
	 D95vccOchMMQQwR809/3BTRj3Yd+RULz6p+j6OE22lVL2SqyUikaenxKbJP1CgkalD
	 QJ9VyVgmmLpayzsdkcGAsjdSwhnIhP11Chpb8J8eEX2hWxK/i7xg8EHxoxM1MY1rMk
	 ooG9s23NVP4LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3D8C001B0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 09:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169018992875.20762.5586836644682871657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c9a9f7923a53bb2c236cf065c74afe1067675b429b4d2e15dbaf6f7369c2f4
Date: Mon, 24 Jul 2023 09:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690189928
