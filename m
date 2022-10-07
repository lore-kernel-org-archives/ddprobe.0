Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B313F7E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704E3C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665124253;
	bh=pUkUCMroZ8P5YwW5TnvvWijEnXe3gFfsEmkMtMc2atI=;
	h=To:Subject:From:Date:From;
	b=XUeWodJt+CLkkHr1JagKRo3EL970cP+eW1EM+6yL+wlhJ9MUTI9ilMioE0UNd2PZY
	 QanP5tJCTuQZhWovHOT9XpfMBXTkNJRiYJoUfcul+oc83qhG6U3H3/3gODDSFVEU9f
	 WO0St42rmroBWzquX1g7nFycXqtyLH7CESWJegIOl0QtRiT6QUNgm4b5kJ2OG2nDA0
	 0b51eILEkMl/i0uIo1tska4I4v8qruwfH88Z1mG6+HdTVoTdYKQ/+9VvfrBMGOaOgL
	 Kmk80XFkP+u6WrEF/JMJcVCAbRJmL/CKX7OiyAcGAjR2ZDcqQ2OdlTalbVyFHpfyY6
	 UFS0PH8v04BNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AEEC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512425332.2151.5604948193989772133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88758ece9888e17d27b20e1a01b3c390721e8de61d64fac44d2eae82704fabb4
Date: Fri, 07 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665124253
