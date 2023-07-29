Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5507738A
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 06:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D086EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 06:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690612928;
	bh=wFaazEr9oVXZ4cOf0+LsRBNbdw7X/TO6/cBkUlSuSlk=;
	h=To:Subject:From:Date:From;
	b=dl90OWHagnyHN0Ry0Iv1eU/5gurvgCKccNw9nAYp+I7fKrIEHL4bdeAeOLtT4aCP1
	 fAH7KIAweD4bDNzj/pjty4Tyyj3Wi/RR7yekw7nr9sDcLLBfRAmuOzIJBrgnYIeEI+
	 GAHZIfb9nZs/52CqnKOKicDtksqvTuCoI5dP5NwoVgAC646Mn8y6VlcLXuix+wyw2r
	 eG+KypGPN2YRgoj+1OpFuAWZBWxCqqFC1orLy4htgiQYyJT58lqg74JWUfQKt7UU7t
	 JTGTEOzPpKdxqZYJMrkXFzEXXQ8+3BK8yUZDoGUBgOHGt1xRpLRLAN4Pv1vRGNy+lE
	 NnBL2Rt/eBfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4037C001DF
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 06:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169061292872.31403.12555079213059050633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415aca576c928ccfbd2f04a209d59c39865e830e8e4940b3922691b1438418c8
Date: Sat, 29 Jul 2023 06:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690612928
