Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A2B15A5
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 22:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 43A52C433EF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 22:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684362906;
	bh=iSaucISpVH9ovvQPmwmZaN5w++/adUrAoN2PJdmU3BE=;
	h=To:Subject:From:Date:From;
	b=sh4KBmmzErqyBr+3HqGsQYe/ler79QWPNQAFYYR8m0ez9SPlhUDE912yvNl1FKf2n
	 V2NdrNo+4/5UKvUWA4GrDE4dMgWSsWmy5DC6bLeXwFwv1Sy4ofxuAcI4cDunYUslqn
	 1sPtjSAyHsV2zL1TNrKZDJkp7vdK2FlGR64TMW6APbmnT61MjjD6mE20yKa19pgerS
	 ZiCrjKVufbUD6rBO29Z3Wm0p2zfO9We95i0EmGWqeeWvluuY4R66ER6cZX8X4pUb8z
	 QrRI+TqS+/lSltBSRFHqVkvaf3QLrydFOlfZfDV66nf1dfwC7nGrJUA4gsFaOsj2oc
	 TDnTGRK5s8j5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15C67C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 22:35:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168436290607.11190.2936764701725597721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20fa378f00ce7ad18515c8941dcb3bc279076f833f9fd389eb5ed39901aaa452
Date: Wed, 17 May 2023 22:35:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684362906
