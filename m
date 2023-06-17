Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB4810EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 23:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68C6C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 23:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687044008;
	bh=4g93lY+frTs0wqejPuBHBR6LMfddq0yW42CqacTgWpg=;
	h=To:Subject:From:Date:From;
	b=CBS58HeTwnlNDOaMd3LVnk5xXFlwIpultRwNPYu3ArFAM7KwWbes0nojsFKuMuxIj
	 QbLjAD0nUyIq5rJuLcojgTCYeyPejUT8RtY9dzZeUyuP0jBexrobsUh1dgdtr41ubF
	 4UFBRcucz29mj2GZ6YBUk+jXE2cO0/5/wq04M8/83PYm1yQVrQPD3n35lHgiobVYj4
	 PQtF48jtt2MIot/LiCfBJApXa6eNWvDVl2bX0Mk+iSCles9GilbX5nYyW/AwYAhP60
	 npV6CLxuDxmjblA7sayPiKhhs+o6l5YvrNjZ3waLA4ydkjtE2Y5qXaozgHHguK5SAz
	 rQc2q8pgEnSqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA662EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 23:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168704400867.28320.9384645496391711563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358fec6be994a5d920fddf7b220492a6cabfaa74a035575a9db1993f9474708f
Date: Sat, 17 Jun 2023 23:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687044008
