Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342C2A32
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 02:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA45EC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 02:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677637565;
	bh=siOrT6VpjXmSPj6BfGiqo+QkmHYjAhf9a0vgQ6Qv2KY=;
	h=To:Subject:From:Date:From;
	b=r9y1MC8KLvdPLBQN2OBz1dx7NFbXSxI3E7ns5sQMBCZMs8zyP6cHF2lI5F3vTJBMi
	 ly6hVNtqQARVZCa39dJZXhMQwO4Lcl0gg8Z0BeaXdb1lG2BqO88HTYto4kbQwhNgWs
	 MFGAf1l1icWIplJxz7hWIHALPbZbyLvU8MKiCCGNfisaq/IiF7AWCz4lXBO2GrpHE1
	 +SQR5m3mseKXK2/0gD3FrLbDlZejSsdv+tndueWrCC2w63QzJjUMBzkk3yY8IXyloS
	 xhMT3YR+en4TQCmCnNbjQcgxZzeGzD/TqTmisZ1l8WaiZSu3RUhmCvRtar4iXrX84k
	 NnbT5k9RvNNcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE6AC64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 02:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167763756577.12242.8363431610851725836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f993d51e227f79bc9c30e4ccb09d690606caf0a5f466900c645e6dc328da4821
Date: Wed, 01 Mar 2023 02:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677637565
