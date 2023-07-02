Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73936376
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E87C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688262848;
	bh=0ofW834FuLqhpxi1qvPtZP+PrCyBWVYgzGi8Hhp87DE=;
	h=To:Subject:From:Date:From;
	b=Kg9ace9MF+Nxy14sXmzqFNCdlZtlPEFnldzV5SLWQVvMJdLhokF59f611JYOcJiAM
	 qO9oPYxV2c05dc8i8T11TmAi3t3K4iizhGWuCLli3AsOFJU0TU5+OPZ9rJiBobSdWz
	 oCphuHyw3gkh42nkvc2tHSzb3pQ24PMKD7NKGFzmTJbTx7WkdAW1VGIyQEA5JBYna3
	 d1u6biKeLYJmsbHrLwtJdEh46e5V5Aorukuv63S1Egvwt4Lz1mw7mXj8GDyIrIuqRQ
	 EAcs7+As9mW38o2dK8QaYYsSs7NueQF/C8YDDHU9AK9TLxf+8m5GfohJD0cbgO/kiq
	 GdMsUfA8RPCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63ACEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168826284872.18875.14817244482745392307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd74b0bf6c95b0adbfe3502eebfb39340cadd7b14ba3a1613562e29262cc795d
Date: Sun, 02 Jul 2023 01:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688262848
