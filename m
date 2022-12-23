Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA49D23A2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 898EEC433AE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671783087;
	bh=9erBGEbqMIH84+U6QtGrSmNlG7tapahgRRjpiUizlCk=;
	h=To:Subject:From:Date:From;
	b=MB9GWQXpAZ/zPMoGNkUFNS4Ct9aoULK0Sx9ln4wKen8s76VStK+zYiTOIJc3jIGZL
	 JIlVHFvqsJvN738dx6x3GGbPOLS21aD1dLGuFvsqShMDaIr5OZazzr9xDRa7E/Yq0s
	 QhFCTp7wIklKEwoozrIdiImqady08EHWMTpc8L7M1t3GzU+OrDl5Xuu6yAz/GtxGGF
	 jTcgsSOd08orwahFQXOG/4aBLuK06zW3D/7eJyTZHsnMVJ3YurEwAZXk6YM3Edz3Vj
	 gjewKCeCgnCwQkF9brYTgReRlDaXMVTDbDc4q6mMjAhA4kTJuS2M3YZ3OGsD8wqU11
	 iqswa0eSy+5rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABF2C4167B
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178308743.16309.10755326784564630598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb053d3e36f715c0420879f0445d82e41907ec1371f023b094302332158dfa8
Date: Fri, 23 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671783087
