Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55F2364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762DBC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666489253;
	bh=Jbdy7lcqYqjqgJy5w4Z/kAG7BXoSfJqLSll3GL1ZN6w=;
	h=To:Subject:From:Date:From;
	b=XkwnV2/NQ6cq86cKN+Zpxn6q7gDBDKFMNN2H31UVbh/m3M0FFLZsLhOcfBXFCnLYM
	 +Naz27Dm/nf0RSiPSdmYpBFzzWgH45qyV7+WERYXQd0GNBqji8IMFOFVc3KY0SDtfS
	 l/ZfrKWxKf4DhATkxBtasBHTnIpCQuv8M62sejbzR1hq6X9LUXVwODC9LiUebu8C14
	 0w4MQlREt0feX8q7iizSXjxTFC8lOR1ZjX/GCnU9PlvD0BN7hnyL7Pgfb96S9lOthV
	 zzefTSoGVNHANrv0Xin8oTjtHGnltkktUbE7WinDCJTTlIMhByWMKV2s0dWWOUJCFy
	 iSp+UtPTX1HWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B558C04A95
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648925333.31014.15068607343166294789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d0365f8ec7a3cfbd455867b7cb5071947e1bacdb3f4d9d12dbfcd1b0b06e17
Date: Sun, 23 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666489253
