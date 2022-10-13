Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C612CA4
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2DFC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665661253;
	bh=H2JieGDBJ3ocTFywGn9irlXMVuT1fcv2P41WGZRL4PI=;
	h=To:Subject:From:Date:From;
	b=rBnSQBdOmm9DQYSsLdWB0fdVqHJOAIkcMJWQjEt4RUsyrAZXmxANbaf1Ppi5ka0Zk
	 4F5AVPjxO5+uIEEYpgz9VHd/8b3d6smomCeyrMjCjcMJOCb4GYCSeNlVXNguQy+6kI
	 HLalj3OClFMB0SqrYc9NoI2FpBo3RzjLsrhEeZKZJ3qf7oFFZ2qYhJqII8KZ0N9fki
	 b4yf6mdv1HRooibp5laRghwUY0r51VpgLIH/8stpnvjHEfR+4vx3bzgZ9dtSTGR6jK
	 JvALhiyZz90XaDaYI5Mw5633zRW2g7Mrne9n+IIQOB/WTIyDiOau5J+xvFOgJ18Xg3
	 +yE/0ItLXbJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA3DC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566125337.1372.12432766405842156511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c1dcb3e2ccee44de54f0ea8c4e4e36f6e9e81f2b12a365c63da253b3a8548b5
Date: Thu, 13 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665661253
