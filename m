Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5B8EA8
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 03:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F147DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 03:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681616706;
	bh=ITuEmGJVY813jqp//co1BkM8mHMHQsEkPsNYbMm/w4k=;
	h=To:Subject:From:Date:From;
	b=vCXyfdTn/suVjG3PZ9lD4JDZFNQdApDxWxfSRc7tLlBN9/Z+dYjtUWcs40haIhzEm
	 mmP/qvvmD2NS4PMRKsx+tzgA54SjBoOUQhSRTpGpSQPKP/nl8TzHaZ7d73Jpb1afpn
	 cT/UJrHmveD/mBmCgeok+8OgE6MB+LfqEW8bH63/IFkTUnINu7J+3+1dd5Ilz240aY
	 EZ58SmrcAvzZpna6W7qapsgQrJa4N2L29VlcLtLjEqgs+EP2RuN9pGhNY9vkioWRV+
	 WJct84sc1dsQZt9HwzvOV8CyauoIglpbke2UY66MmndYrxKoaR3zGTWeaRIObIgXke
	 NxSnsMzOrrsaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D30B2C77B70
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 03:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168161670581.19139.13939442493325042003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcf35c20c0c6f06a44ed597d59b3802f24a4d92be3db565d888f67009776a33
Date: Sun, 16 Apr 2023 03:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681616705
