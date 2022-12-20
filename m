Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83C47E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DE2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671533487;
	bh=hyBZwTJbqiMWYLA3zOffTAVhzq7tSso4B/49otX0EgY=;
	h=To:Subject:From:Date:From;
	b=eNBLGokVKeeaHoc4YugGNQhDy2Qj6MiYVPXGeM/aVAcQoO+J0LsLpbO6NWlpPbUIE
	 dwGRkHGH7ZnHDTNhXoroF4TjAuxDe7jD75se6n6wzDFmDfsHJiXMrmT+9TklnJs+3J
	 iRlQOW03K/2KKUMX3B74VmgTFg/iUKstdWBft3toHGBAvogfW+EXwx2bL3SiiCp3dU
	 2QBG+04HMHErcjYstFif9aptXrKMBQ87U0+3zmvWk3Vf51qxiprsgddxWOw2WKn+Ru
	 kI3Lsw3X0/ukViYHS8BHZDYgo2CoGopqEExqHe3RvAIJaWs1hhyxHyAeTFS1j8PLvg
	 46bYUMT+0XMDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6216EC4167B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153348738.24419.7067322735917662022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa690436de3d46db016499bddfd184127a1c31c34169fb7b15d7613d1f5bb856
Date: Tue, 20 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671533487
