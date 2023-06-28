Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938D01847
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04DE2C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687920789;
	bh=YddSG6Jft2dFMPvrfz3mWoEtxZ6Lz/qSvkH5dvhuKGU=;
	h=To:Subject:From:Date:From;
	b=ekqPEStVo5O2glDAfCkDu3xNYfPF3NUmhyDJTOibMJiOjbBbJfvUgYCwH3qC0KVax
	 pMJ6EiOnd5ExmtHqHTi6tmKjgcW4EoBfSRb5T4sQUg6OsdX2QsVMvpsTpUp88fCjTd
	 /F9gUxFqc26N6iCASfYJvzytVMrkq4k2L6FCqB5LmMjhxcNY5uGaIJddarJO7/e9lx
	 Te6txnoAb4CznFG3xoMHh0mbK5iCNEa2tDelTwkd4VlQKOSFiYC2paLjnSUuboLZ3h
	 GNho3b5ajucZ8Ba09CQDumHhjW9WQUuUNWGd/IgEQAwW2V/OAifIBmPHOqMGN3oP7W
	 oWZmkJ/5QEUfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D647AEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168792078885.3718.1131493184437503587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ee9c3ac7e248edd7916ad9a3ee9cd9eb9694abddc6ca2ca25255f11317cc12
Date: Wed, 28 Jun 2023 02:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687920788
