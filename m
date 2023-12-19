Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1312740BF7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sm+FpRLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89DD2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703023696;
	bh=FqpUOm0NxZWfFpin2u4gvhIqo3MNIgkETHA6/0zh6rw=;
	h=To:Subject:From:Date:From;
	b=Sm+FpRLCf74ZJhu3ZHPog9C6MndjG4gY3cSdeYyHuDCfi0DsFneDwxNUcRlNX5rE7
	 7X7Vxd6sF86LnLQ9vv1eOSR2rQb1NvKbtZbkCb2D7Gofr0A/LTcjFnE4fU0S5O9LlT
	 kxiT24zt7byaZZg5ys0MwkRy2CTF5bGQtE4Qq5eReAOtG8s2Toh2a4Ghe2AVZoLbAC
	 d4lau3LgVcrDcTgATgvTn1IGzXfnZ4HVHUcHr3isghJnnAADgNgTAn0E8YWpbra7jU
	 k1SUa/R/Xo52F9T9IJDbDLrJs2pXmZIu+C/8xro5Y6c/IKotIXMeUewZBaDfth9IjN
	 Y8x46sNfnLFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E57C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170302369640.19400.10551557691038950698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06a689228469b3144e68a5e74342e7b8b48edebefaf3bd9d8e4534d33c0e2f6
Date: Tue, 19 Dec 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703023696
