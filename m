Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB917ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E67C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606853;
	bh=N/E0qZlV6RBHDBlMzzz0KTNsOZ7dH1m45uJhRVrpzk0=;
	h=To:Subject:From:Date:From;
	b=CgUtUbgnRg/p/MqHZDPBkojEgV6aRSpEqqBUfxuyzv+3pmhHIXNByauy0112ygP+b
	 qW/vwgUl+S4djtFmfLkGaqWG1EEbCbBuMciaExKNwBDgN7LAZXZk5eEmYJF/UQwyMD
	 Zfs8pBmmkhw+QjeROcndEeJgrWOD9+Hin77Aep4oL0g4iOva1xZ7v/Y9q/pdo3q4EU
	 /VSuV/y23k3sgNauahIPG9ARtuf41z9lxV/Zrvv+HhhxvW41BBftSCcmZjbF6GBIfb
	 Ns5tSjJjvsk1WqFSShQUxpX7a+SZM6bxNsjBtgMJKa1Nc1hynABO0QoaObnPPLyxFn
	 7SdAHzOcz2MRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5633CC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660685334.29130.625826703882360888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa5f3e1f141314c33e8d668a7971e8d2d047ef3deb6fedc31471d44d7f66e1d
Date: Mon, 24 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666606853
