Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BF753BE
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D898FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688974628;
	bh=7JHQE5hMwEjVjBiSZmugAKaDMngOPc1Z3IyXHWfcDLI=;
	h=To:Subject:From:Date:From;
	b=s84cXUlf+w7cuJVXNFACqb4xYbPQwKHlXaCrBKQSdqD2u+9+03l1VpCzzHnd2vWvh
	 drYinbnZaZaHne4ZHL3DXkQn9vnhjXaFhDmmJEFFyL6AiIdEaRJ74c4tMfQtKa71QK
	 pcYmKWy32jIa65a+bDu9RTaXAd+gMsmh6DnCAGwkIJj7Q6cxHkjPl6W6iJQoVnBpmV
	 6aa2Ma0lN1qrJ9bxqyrHXb7miv0ZpPAqKshdnZZopgu0CBCL/FYYVIX5twQ3wzTRUX
	 5adRHX8QPaviKd3cSs7mkUIwuGb5JRtykrP+1xoE0CC5zWMH6xrh1OR3+Wjlrh2AnA
	 NVy/iMftDAeig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC68DEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897462874.31589.7863789638888365490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab75a54a3760af34a50ffc22e1779be730341455b471385efab5e21f71ec7592
Date: Mon, 10 Jul 2023 07:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688974628
