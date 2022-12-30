Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8775256D
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B0CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672410087;
	bh=GkLSBykKGKG+APKuKq1yvOFjLr1bICPHry9Hy10st98=;
	h=To:Subject:From:Date:From;
	b=msQXOT6NpctAvmVs7vZWrSJX9q6eQRR5aKJguBZ4RS04VX2j3va+9XMKfTWjdP/5u
	 2u74Lfv5c2Xx7HWz1muX8MUJmIZjAwCeM0FvCa0X7UMO67suAgHKN7Hs8AYz26oP7z
	 JpPyM5spRcicWdT06eEBea9aCzIxAwzRbN+3CXNnk3jsKEAWMs5J/fMJbMGMNFEv+S
	 c3H8hi9gZ/chwCqp4zrygFQpTErP7aWk1Iyv/21uOdkAephkvqFvtE0ZwExabalJpO
	 8sS3KLeuWvHIoRSRj0S6+hDahEsrylcxm5lWPvC768cVvB7G9jDlIwQ7rDxl0/AKeu
	 FKaKxsWDmq71w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67960C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241008741.29819.13853198654783515161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a9eeadaa9fb62047e4f99d97cdfe67ab153213a9e79b97d5b620825061bb51
Date: Fri, 30 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672410087
