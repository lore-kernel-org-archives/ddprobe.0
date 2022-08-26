Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94632F23
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C47C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661545852;
	bh=vyXuJgzAwhz4dnKv2RzrsqTZtcqp3OuA5WM46BUNlL0=;
	h=To:Subject:From:Date:From;
	b=NzqXvKrvCKP1VqYyGd2UzrDoGuUQSwNYRYeyBlddPlVCR8jQMBVWd3QCBYJRLXX2O
	 vXrz3tqecEkBLK5pqo6+vxWZnnal4iSGafnJtK8SrTKJeyJ72Dy+J2mIzpzvxGzSiZ
	 PwTY8WMWxtPmyuxgrDPhKoQcBUjfjuebA+jVcU8toKgvE2UEL9ibrXTUGK4Ptn6In6
	 QshC8uNUJIK2BwKXKM6hdj0pAc+P3kqOwnO9lEcBxArJFR80MjXDbok0aQS/GjRKgb
	 uR19vOlZUJ+6HuGrRPtP3YI7rDYWhC4y5uMYEKiwRobqL/thAhX+bikD05WUhTh2D4
	 ZyvsG7mNlT0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69651ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154585236.2820.11077195471788808886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ed7345ce5b3cfc8c1608f5237f6233b3fb0dd38b083171095bee20156a0154
Date: Fri, 26 Aug 2022 20:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661545852
