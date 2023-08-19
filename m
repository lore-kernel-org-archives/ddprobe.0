Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DC34A16
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 18:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81F8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 18:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692469448;
	bh=+TSfwJn3Cbce09XHoWVqx/mzycinBJOzOHizQgpl6IM=;
	h=To:Subject:From:Date:From;
	b=Iy6v7qQPNNdravrM2rRllaIwuzbG+85t2jax8CPYgzR31Q3U1BaxATwJZn5ezn1AF
	 DuykZjV0ZqZRl3E550quYuHbnFt7cQYlGv1ZnO6kr/MPEC3UKeFxhRBjDGX4cd1UQ1
	 pE7plaWw8y5sWmhgXSou12RndYXdjcPJrHvFya5+rxgAzB3PREc+c0QX6Gq8InbEeu
	 bGLTz0kvpmTKARwXcC0iwWie077tE3cdq9Et7AMYfAmV27ejVIJFpndNe+f9hMPm3G
	 4++/lFgdFoP8gSOTG5jF2uu2mEHSdhDT9hBoUcQLRbocsv6TByMD0cRks2q8Otxmer
	 784stax+TQBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0421EE49A6
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 18:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169246944875.10220.15447154246220320226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724c643a618d3695f5a334e6de799fcab0e77673f5f1b0f115fb4ca6f9dc705c
Date: Sat, 19 Aug 2023 18:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692469448
