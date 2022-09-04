Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA2B3C02
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69FDAC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662319253;
	bh=EwOpMXCOG8TgKMhvDLPjUu6RGuPLUKnjfA2pPIhHAis=;
	h=To:Subject:From:Date:From;
	b=NkPZ8gRVRh5+oVNlaiGPPGtMRKhwMaQsO6ensigwLTvk0E9oty/Nn7MxfoPnJEuZC
	 FmsNHpzuEiV4WIHikcpe8DDH77oNl9NnjdZy36ZxZRazijLxW/oiGSHF7SddT7hIKs
	 Lly1LouVjeM5VjxXuiAFk3xhWREBxTiHGp+Xhy5sOzK2t7u2bKK1VsHjfU+S1nxRPm
	 0SEWj8BuOAL1Zx7PvDRvw3VDxOf9y3+02Sg+O3s+K8xmeER1rQnadtbCuAsuK9A7aZ
	 S7oWGffDQBffegRUX67YpivMDDqEiLxdNUaUrp6QhVFYyJSKPKV7j/HelZUTn1xjHM
	 BXnv9yEgBPREQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E62ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166231925332.23849.7816090862278585189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b3f427f5a1b5b14c129ad56bfefce7b7214b87bdd2d20256bb3cd8d89e67e7
Date: Sun, 04 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662319253
