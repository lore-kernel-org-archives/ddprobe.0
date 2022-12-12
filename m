Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99BE258F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77821C433F0
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670851887;
	bh=9XErwT/Ve/uabHNJwf9XQ0tPJDuFdt1cQrKkN9gVX9c=;
	h=To:Subject:From:Date:From;
	b=iV5Xk/HJU/JaM/u3oKzbVzKQ01/ckqmRvw2zqqi8hw0YpzIJ4/bir5wqSiM54dU28
	 D/W4Ie+7feoUOTxYrnQJK9Qt+MDucv50HsSpJm9jZbMgHMcG2ZzDa6OHaOetPKwJMq
	 ZxgoQZhh4YcJlSMBDzhj2ABmEAoQ9CL3niHGeDrR6QI3BBsjkhgSWLkaPVj2dD6te6
	 VL2fgaHTKTbZtFqPRfGKj9tEBbnscZdkUOjfq7dEbl3+opTsYCl+eCCsghCUI0mcbJ
	 PyKiQcFemilKuRDkLIKO4toOwW6tBIMtOZlcw3N8A2ZX16EbxTzMKSajQxBQh/uh2c
	 OUL8me606vQew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AC6C00145
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085188738.25499.11393949947130684509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31cdaacde59a070d1f0a2134797b65e8b867f1f4bc100f120b4efcb43b8027ae
Date: Mon, 12 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670851887
