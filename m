Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A5D7EE
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPmPfD7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D20CC433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701652696;
	bh=FbVmPzQpxYEpeBa/4LDB6IlYIeJ18xMOhwkL9RfONHE=;
	h=To:Subject:From:Date:From;
	b=nPmPfD7g9+C/0AY1hMF7/hWGAmTMfikJWVuaP+RWcWqjrDmiCkmChrOS+CfezCXll
	 gj0COTIyFuLyu5YvWNSPXSQDHULIlgYHM9J79nIopxCxM01rfZIOG5U94Cn/ALBfxW
	 xw8pAw3zqFV6QWrSAfO5judmU3gzGz/P581X5BuIqAubk7ca1fD5+zVlCMFR5JWjK3
	 tW+1mHD10Ye1kNSQibPCCBq68MWu3xnDmPpu244pe/bIlFeDkct+otoHlQUzqKs40p
	 g34xxuZGa4eX/etIFjFoffe4Mgv6vjjm/PECFrOYLQSFhtixQiEGEnqwk85bVkLuEd
	 WYAjUc/lu9QUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6148FC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170165269637.9289.16719359755898488771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a95a7822d94ff2ec6d6f6b268079d2e440972072b2485a10fbf2ea08908a502
Date: Mon, 04 Dec 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701652696
