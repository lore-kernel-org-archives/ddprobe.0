Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670F81BF0B
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 19:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE622C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691178788;
	bh=aFzxM42jVIDxaI5JkDz3oRRxhxOAWs4gWpv/cq16WIU=;
	h=To:Subject:From:Date:From;
	b=g6GkjAGNOzkDavgW5CupQ82HWIZDhEcxRdVWxdwDxqjUqnLQM1CjbguyK34ElpFo0
	 e0yZRb09CNh45C37ZQAmJAY6LLx1P6nenBesVXwpnVuO5y3IkiZVSIgqACTByutFyC
	 fWiLFRKxe3ovmbOX6FQ/IXJ4JkAxygeLZPfZPSu/M3LpkN5h1Wp5HGlF9mqARzBctc
	 r+c0u38Q5tWdiRrZs5aT3gc0ty/SNqcThZi1gcpUgKnX9J7ClYoKXPOlSu49+92tNr
	 mYZH4ZkELkMI7HJq3Yh6H0jjcSR9lYPJIgVywYcCjUadCZJIGz1DXRYGohx8nve6JF
	 PtyK+ZnNiQw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D6CC001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169117878870.30535.14101161641018785911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9bc657b8b90628d66cd69a1980dc9ee59313dc2762263416446348ac0e6a34d
Date: Fri, 04 Aug 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691178788
