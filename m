Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19E31FBD
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA9EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665748253;
	bh=fDJXORlewt/wcbXN/PaMgjxDE6nT+69pPNMWLeGs18Y=;
	h=To:Subject:From:Date:From;
	b=u4JJ9Oag8XMDoPj7V6Ue3WfjlIPNXEXL2yufP9B0UJgydOWFthqtH6Ux8vrMk5uEL
	 XI07mMpzGkzRIsnrNP3q3GwJNN1k2SRA+2pKNaX1WUDWkw9S0nOguHKjjWzh/nGVto
	 njbq8JNv8y8gGCpO9ZkecqlQp7ulSSOBpKVmwEwOT91IQxye2r9N6s1yYMkHyL3nhk
	 GpSVn7Z0ern+xRpEoxXkKzteaLEH0P1xm1OFoAodRz0uf71qsnWSdPuG3wOEeSRk8d
	 zJ+W19OKx1FCFIMddzJpG8t40YYBybmAUMbopuj72jBNVdaNjCx9A49Ywo8A2DW5Mb
	 dYg56LFI7NRog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51581C43219
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574825332.12326.10911435914657622121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e82a1e529fa196ad9a6b52a0acd9a91634406c0336e72cc5b1ff2c0cf4050c
Date: Fri, 14 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665748253
