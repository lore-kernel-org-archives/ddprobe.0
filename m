Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3532F44
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 10:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D681EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688811428;
	bh=q34CXuNCAEiVct01cpvH5Ez8/FZf6FsbZdR5RpiTS7Y=;
	h=To:Subject:From:Date:From;
	b=fNMfx57q7OAPjsQU0q33uDjke+88NNRCrqY1Dgpn/vtOp2EcIYKGk+Us1z4YSIoW9
	 6p38fwuOQFMS/KpFOVLm3nF00ix0kxj2PgK53m3zZCWBfxgc09P7h38btH9D8QI5O+
	 qTdqL8KslHWSy9Lx9h/XDRL0L6zPzoJWE8u6/wguKT5GtNTvL7CtAv1Q+i1xcUCts8
	 lGc0wX3cdeXWias3ATq/5TFDwtAQhC9ndKZGka3SIfzkLlcQSqsH0iV4hECHzQgNdw
	 OKML6D/AG2hswm1/gLuUW1e7SXQKZzPwc8X/CeDet0c/3T4Y4hyF3QV7XlM8ro5BIE
	 bb7Dj+xk4H8YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED9CEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168881142869.25809.15821883310305087982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e05e52957c7e89df7f558016805ad6899b31a461a20b788bdf22cb41c80a8b
Date: Sat, 08 Jul 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688811428
