Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3BF882E
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 22:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBDF7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 22:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676930946;
	bh=1sHRQWt8v6VasrPKe+4v/WLNPZbx2dH5bavHzwQBtog=;
	h=To:Subject:From:Date:From;
	b=G1Eyhnrw3m2EuXOseWnkGq5PPyctPMxt8v6dh0RhIgaCy7tcZhoZ2qcMseo7DA9iz
	 lTJrsYFiS1CBCrbrAieXJS1O4m/AF9WgttPIWvTIN02Xv89fvVSha7uyNCI2ZlzoMZ
	 GkyI1IrI4CB9RU6lRY/ZZh2Nl4a2tO93tDZLKLsyUwQNK2fm9riNGG4G8dnuC5L8wo
	 yTuSiEC9BjYKpcUXPhxSHwcqhqFXygntH+6D2UXC+OkhhdTkm3Nfc6DkUncZobsJv/
	 F3Cn64VnVY4DWcKC7c5+NNIsFM0Wpals4IiS7vD8J/Q1uGXdQVSirpHBvVkABo5HQP
	 OcYvc0o9+Pilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67FEC61DA3
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 22:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167693094580.31864.10851554809817569839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e96d356db89a0054e3d7a63df365e863f92b4f581c7fceae29853ef6d7ced3d
Date: Mon, 20 Feb 2023 22:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676930945
