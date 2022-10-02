Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE42B7C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF10C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664742053;
	bh=8eBQMsgA4Se3GtWOATCctmT3mmfWIQK0r87NlOmewxE=;
	h=To:Subject:From:Date:From;
	b=E0gYchY9aJ/8xsa8Q72+KaUDR1kVY8YME/hnuC2eOA6cwHSzEMvi+NW2HTj2IXKod
	 zoelswRfNEV2yBQolO+l6bh4VNMeJ7pTvgeb9ie/FQYehf1D065vUiiNWBeFUfam01
	 OEGWxcFt10bGWUJUJ3HEs3s3NdAJAvC95LDxvg1CfnO570nS5TsrPgzEzpHLV6bumE
	 iIzzxfRymuqkkqW0+bi0pwMiXDF+uGYYf+4HU7HnyG++A0qSIVaLfO9/GOBW1Ay4zw
	 fmKCOppvUTc7z4yADZvvR+YqrUAA9+o3jsnUqk+Fg3POrQL+6G5jucQkI7taQtNVPg
	 cW0I3jnWmbTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5464EC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474205333.12324.18284230632461815915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e5f5fa6cac5efffd4d98f38b1fb6bd5fbca2e5d26c680f6e1f7e831f353ddb
Date: Sun, 02 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664742053
