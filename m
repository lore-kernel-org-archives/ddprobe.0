Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481EF7F7
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0860C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679818325;
	bh=3s1TPZwuFLaLYdPNIsXcTpwZmMrETlh6vfAcEpmrjkA=;
	h=To:Subject:From:Date:From;
	b=UWoPVfKmGcJQDMI4qvH0Suh0UT2YsbSTYnFe2fZwKgpP5blUAU49mfxCUNGRCqKZ+
	 kB4MGNkVjTLceq6aoqDocO0xCU9UJkArKWd95AbZ/qYDucal6ff+gzwrGJ1XgCjcLm
	 kr7cB79uPI2Jj6ihHkl3rhz2lwZ3tWgStPHFYXdwN2jmRaRlmWTYGnMb/bw1JHLhtL
	 fiFqWrO21m3TYFWxt7gJLM4kQplK444oZkesokJPlE9S7ZXKJMhIx3V+yWs3e2nxao
	 RBuRHsxnj+0q/qYUfTaDIo+5tYKe5nsOA/4i3mk30a7ICxpMU1AtVZzY6lO3R8FSbp
	 eQGN/1nd3k6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4872C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 08:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167981832579.19370.6156125957798763775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909226b4d81318ac40c3bfb7365d0967925cae90ac3d8c6a31ecaf75210fc563
Date: Sun, 26 Mar 2023 08:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679818325
