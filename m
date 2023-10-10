Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561A4EEDF
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dv99EthZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7E9C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696935428;
	bh=cUi85JGyAGpXqMYMyHp6MQmnmTX0iGuyuDreA2FLAf8=;
	h=To:Subject:From:Date:From;
	b=dv99EthZQLFf7n2WJoAL+5DigwAldQjcuPkC2qLkRgJSjFvDO6epUy8rIOcJ0ct3Z
	 1DdIDU0mJmif1jYqik2WqzzroDNPtxOtzCtgPDdRl6Cocr9RMAHY/20lvWZhFCDEb4
	 xsEevMoFI21S/RbGijMMVkAcBbcbk10FqoB8XnAxqsiPZddDgv2kDLJqPr+Ee9tgfs
	 PH7ysSVEOURGkFpcQ+65jSBi8gQj9iGkWVAJKkSmx93wOZ8KNSmMNwcEF5mfs9sIpM
	 BT/3Vpvewea7bs+/S0RHcjQy8nLclv+Ex5jK/1DwYF2zoFqbF2k+hDQGMxbUyJy53q
	 Y7o26GLBVzDnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EACCD80A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169693542873.380.14242505592745746294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96888f790eb2d2f8fdad1e4022eee6f206a1e8d6be42cc4a4c8bd4ca209c6fcf
Date: Tue, 10 Oct 2023 10:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696935428
