Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92395A91
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF4CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662850853;
	bh=MAKTNvGMqhHlqzyniQpiucTWscOnk2oa4d1AnzplyWA=;
	h=To:Subject:From:Date:From;
	b=S3p5XcgwBfz3+wK+1N1ApZ4Fhk3zuTcjILRYHMBU/Qrbf8Eicwh3LSS43u3XKE/cG
	 ioDBCFiMDHGNDeJhyqV0Gcy3HeIJUnH3cnheJAV6Puq7ZewdTxznr9viCPfym0bBFW
	 MFtAyp8ememsLcRiWAjde6mFKiWBXIik1+ZrDz9m4l7ub5GTDVQGi0aKhEqUO4d+eg
	 w5DKd5F2vbko8gq3KR9s0iHBWRygjN1iwQim6jj06PTId5GJdv5EyJgJ7Vqtv1rD0J
	 gbPMDxUnHWvTYm4wVxk//ZYgof4nEb2168cZDZlz2ng/NkroITPUfPNBjiljejlV+/
	 lEyMHy9fGFt5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F01C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166285085333.18578.6160363354392934560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4c25f420698ac32659eb8d9322ce7cabef9474969e53d2e722480be2e60e9d
Date: Sat, 10 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662850853
