Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85F71365
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785C2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671577887;
	bh=gpGy6N6bdokYJ8R+2E3lzehhOcHlQqMo5Wel+FNajZ4=;
	h=To:Subject:From:Date:From;
	b=eRMkW8UL40XS/VKFKJ6pB5EulpF4XqPOIaa1aYF9h4O5wL+C0rgaAg2R/NJtyYOfF
	 KeSXE1hk7NqjslE6K1Z/HwdcDHeuO7rTss8sP8XXf9vQzYICei/EH47DoStbA6nuvu
	 AE1r12oi8N+LOsZegf67cKiOk0g77W1oqyZ+V0S0jIeomb2RWXYFRhYrMjcL85J5Jl
	 4Ut8RnLp/fMvHI3DMxrRkVAFQDaH19mHNEIyJYAxrcQZya/Q7Dot0ACEEEgEFPAqOE
	 HYUlL2bb7BH+HRNMU8uXV7B+rOzmhfrGGAgcP1ur+FDWjvEl8Wb9qeKr9aSEtgEb4D
	 1MrPCj3KE985g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D706C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157788737.1685.3824911574184370867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c23a988d20a2d815f88e581b1636e2c6ccf51000ee2544ce5314489797b4f7
Date: Tue, 20 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671577887
