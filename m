Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D05372
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D44AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668127254;
	bh=BouDdnwIhLKgsfX7Wia01o0qJXj+PL/bijoB78xN5+Y=;
	h=To:Subject:From:Date:From;
	b=a9Aru1ufjTlWeMGJEtwb9afwoUnyZFsDYCdjnyDe8byuMUfamse3pcep5tFMr6FaY
	 sL9AegChZjDHQvX8Tebagx+VpOY7fxXkUJ0VODs5afLB6BVgYZb0IMmwczyJmWXx0+
	 CNeFZI+jlsFRjleZ19F58/5q8mSoAJp4Nu3/Q7TX5M7v3N7bAdjItOgWS27GJQlCSc
	 KcBlNyV3yILT4r14ARBObbG/n7yw1qvsB5I/oODSuaN/Mrd+Big5M6USOZQ7kptViP
	 wXHm18RK+V4C1zf4NaoiWV6ICTN0f+hjEu7dyOZnCXhIRsvz6bMP7xnTOtu+N5BOaP
	 nRBzsJi8d8uAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542D0C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812725433.21821.8949380519564463393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6061a165bac03bf60027df4c233c198e67c19333a88be71cf73b4ffce965ff
Date: Fri, 11 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668127254
