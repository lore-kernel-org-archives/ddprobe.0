Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B254B1365
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6F1C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663722653;
	bh=9KyKdmTCmjYLGw7DXROJucqm5daeD571GPo/3TRM9KA=;
	h=To:Subject:From:Date:From;
	b=GQYfrYZdexXZ6DTnc/XNe5wAB5dP0F0EMNrubGhmkoLnpj0eobIWmzWGo9+QgaGZY
	 gucJfJkBKyiwPd4ENt+gzMzGuSrKgpPOrhZrIxWuBLC68yQUyGxVP6PkC6cDkM1b+Y
	 RUGCwjfU1E2UTh/QBaEOXXgDOYlXapOpRuvewy0hsQ8L57xb+P1iEcuzmHuMiLlikb
	 Sd0otX9teHzse51EYpdfLvfBWLGiJ1kf11CkIbxdRgmUL/44MLw/5lTuaeAD/eY0r+
	 mlSCoI5oKUzQ/MdgmDAGQl/jvwAoXer9tNTq9u+nwFKWPQTE/ypN3wFh0LgUvJtUJt
	 73J7Qts2FOIeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F599C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166372265331.19100.4757513773996726948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d59baf1203c19a90270858ae09df7a5a5723b01a065e8f6f792f5ae34f2584
Date: Wed, 21 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663722653
