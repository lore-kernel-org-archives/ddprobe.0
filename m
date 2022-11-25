Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA21B15B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A914C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669338654;
	bh=i1gKh9badA0hWfaHEuik1mXQwpEYK3IE5xBXgv/Rx5E=;
	h=To:Subject:From:Date:From;
	b=XYjFHCryXAjQ9bQU2JsvXhmuxj/ODn4pqf1Sy8PjJQobDZXDbthrdwAkJLeOKVgJe
	 NHMY5ypv2Y4LTPXOXQIeJw7FlarDe7c5KjWUqsGap64tpOvPcdwoRkuAxcbfdzX9yw
	 AMP2I5uPlSL64bjqRM/HaiceFrqIjZ+Os+VyxFcrcJ/upHYArauGj4UQnYsNcMZ9A+
	 Vr9tapNMdkp2JZYR9hHcvsVm3oMwmnB0UlHB9tMN/C08YheKt8He/Wua2dPI083psa
	 /r6LeeOkJ23sX6nGuVqW4j+pMDR7Irqlhr+lOwg+BNVaA1NkXWCKfdBc/etE1vocoX
	 zBZIr0EI9y4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 518DEC433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933865432.25655.4761966271929689282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9f9bc506e2e7f67e9664b5d9dd67a1e8f2508db5b4e8f6d12e77f76e4d05a2
Date: Fri, 25 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669338654
