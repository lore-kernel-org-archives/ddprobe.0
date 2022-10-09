Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944731C2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AE3C433D7
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665359453;
	bh=6BJOu2X3X35m/ev9tltUj7MgtleZtn03gfzVyNQX3aI=;
	h=To:Subject:From:Date:From;
	b=M6PwC831tdQ3aaHDH9lNjbIbdrVz5GZgfhhNEGQ/XKVVJkcHP7bNctJEibzkgY3xW
	 Y94kKgS+uVWBLnSkBc22zxhjEktirPG+6b31LDq2eWllKIgnRTsajG/VQrKRrQqMpp
	 idqFQ5T4rhtD294/qo5SRW+QPFSTDvf7FwlZGLiDLDg5eNftokR4kxXw0RTnBv+ZR7
	 d2uEUF4Ht4Zndm/mJHbajf3qRdKYNn4bh4doic0Av/O4Bz578iGYXPZx3EodbO8FTR
	 OVf6ltwZ1rAFF/XyaqYHn83yHgfcpZP3A21dulGh/KyZ+ASOdAzqjdo6+8P4zKxWDF
	 cQidPSuSd76zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C6BC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535945332.23683.3913900795637749821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ad32194b793cb9f1cc531432587425772ff12a1b1f60bce6f1fc4501574f40
Date: Sun, 09 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665359453
