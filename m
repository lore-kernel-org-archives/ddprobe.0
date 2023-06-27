Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520A6171C5
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75F0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687870988;
	bh=l4YLnebNCF6FS1a6eYcWQjdUzJTuHdkDA47CzvGyV5Y=;
	h=To:Subject:From:Date:From;
	b=C50kfBe1Xu/HyU6eYRmZ3rewin1/uYDtsTEg8+D8xyn2EBXUnWBK+/5nn7aeTRuIo
	 ocj4gqLCIcAJFqX0Zg/1fVoP5034CNjGyPXfJXe8HcRnpxKCWzds89ppqMZth6sUPo
	 KBZdj1IJFjBiKk9PxHiFYU7g3oHiEGBkKYS8VRhWaFnERAMQHmowaR9lED9W4xbE20
	 vd+n/U4J0HiBmZwCopjB2NHlgr/Cbjs2zHMw6plwCTiNeWEun60OBz5GTkJ8MkFSRU
	 Yu912JrH00OrQRoW+48Z2hclRIOzxZm54VqMVvPOSiPBlf7aNjUw2LHxjl/IY+7jQM
	 XEj0saUpgoKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8486EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787098867.20042.9318519013994891761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e9527b741a7c1ec67c245f60639ef014890f3e6be69756e36045c304b35ef4
Date: Tue, 27 Jun 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687870988
