Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3549184
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EB29C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670214654;
	bh=gv2RQvyrTSvpQLfNzlSJjUnrf487XYdpAwQbWYoA75w=;
	h=To:Subject:From:Date:From;
	b=D1NSffkGf1y76pZtDbSDH5UVhQ6n0R2AtRxyCQFElECJoUgnfsqx8mcA2D74W7FuI
	 cPHlMc/0UhYiSnUk0p0Faku94VRH0VoPOuAlQyqDJneF5z8yOVBdY22dlJhiNEgypq
	 hMbx1y1/aS9xBgdd+644XTUV+d6EQ91yaPhU5vGXTCpcAzLIYOJWHcNYlsgZEgZeSS
	 h8SZt7bhEdXMx0Vy/pksED2VHbiTytNgk0/qYJUlWRcOrdAJ/BYjnWZTozdOPPIkc4
	 6t7w7cyADW55m0zQafs9KO27BbGA+J+6ZB7t6Nnt56ciQp70Y+dbd++BIipk4oaeEP
	 taGtB2QXHUFbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE07C47088
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167021465444.3383.14798406295602489846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7238235f49ac8cf5c8670a1721da2f2227cf7e6a0f8efef73f5a6deb73b4c6be
Date: Mon, 05 Dec 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670214654
