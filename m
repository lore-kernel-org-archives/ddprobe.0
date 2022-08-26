Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C404C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EFDC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661546452;
	bh=2Nv0fYYvGX7ht/R63bhPo3fEaRQhC8b092CUmn8pA9A=;
	h=To:Subject:From:Date:From;
	b=pUgLbPXt5RN2uB3mgnuWEDiplhr4Yg8846nuWtcC8SNBoXjC+N+cvWkonNMwjxriy
	 7A+ZTM/SfaJaeucgGpRO/5B9YkCZcW+b5pmx+d6E2QRhl2K5Z1X0X1fxN8JCy3Bvr1
	 4dW6BgPO8xkXx6bbWTHbiN9/Jv0yin+i4WeLYesWSiwkwlrt2VMLNCQAmXCquJRPdN
	 k/Eo8DH6aLiF3qmi7PcvRXhLysyv5YDdj3yHNiw9CVA7oMxVLc2EvCkE9371zqjQAg
	 +E9Y3nhe1Ei8mIVr+khHdUlvJAP0EmMzQqR07W1RuEAyFfFS8swgW+TpVTAxNGAcmA
	 nrUk5gdtrbP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C18ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154645236.28373.12022841798376347074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce119e0c5d0ba679a71833db689f6b83c2f860a2e3615be244ed01fcef72845
Date: Fri, 26 Aug 2022 20:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661546452
