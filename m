Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5462F16408
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9565C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687299128;
	bh=uvbKGr05BhP40DXYP/TwXdQ0DTx324SJO3MBmaPH3dk=;
	h=To:Subject:From:Date:From;
	b=rpdIDfkB2QOHzvjgpKTJWw+82OSBqh7hPwUkiLl7DFkXLH8eZDrX/3+9pZc5ruGP/
	 ph5AEkpCThuMzad5BjyEdr1AZMxr2yzZiuVbpNI67myT69A5t/PN3sjo0b4Qx9IlJ0
	 kjE9xlHbUjG/NUE67l92ag7fDPiAtjjyP7rIXmKYg3G/nndGw16iFdCrlIBANq57xF
	 0NQaVjHr5HQasXUp+TdtImCW6YmR0Ir0fuT1s648EgUpgSoPdBrJ4CxduVRhV9M9Qm
	 t6e24UvyE3YvvpeO3DTg4xziNTjv/C+k5tDmgGAXrQMJta0WvOyurQgqyr8RJ1twbH
	 PJwwVTWVzsK2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE887EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 22:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168729912870.6443.8556580471339892471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5cbc129254f9dac78288651c50b0399a73c78325140dd00e8fdb97085b2113
Date: Tue, 20 Jun 2023 22:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687299128
