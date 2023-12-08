Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8C914ABF
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXJkDQGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750F9C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702031296;
	bh=hnfv0Q58wag21i2mi3oZKHdZKp7fxWcVlfOSFN2h0Ss=;
	h=To:Subject:From:Date:From;
	b=RXJkDQGM/GrS00vGltuilvfIVnkUmHYw2WtvlriqhKt5wK54dT+khkKmsl1D44DTH
	 vtgJEKGRgpGOPkbIxMUU3TlhKWP+x5QjDwa17QjgxELp1LH+Qtd+8VBzL+17XBdWUV
	 nkz8XwA49Mn/fe9cywhgWhN7HDYQ+LRWZrRmGo91jEpsu5tWYhSH1Sa4XV3Micvxu8
	 cNeETlcIEDC90YQ7JSh5lWiT6r6TWharql2F3vINMegu07GTtkbI5kw75QixYZrp4r
	 0/daOc+HNMJgA9bHH9d/rskAhMkME1bETNOAzkrLgwFd49YVCux3xyPKPosSYwBRS8
	 9WsYbHElcensQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDECC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170203129638.4244.17984816140819242623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5319b0a40015b478b244367a564e0af2cecf57ac846bf7b43bb35167ffcf25c9
Date: Fri, 08 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702031296
