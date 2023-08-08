Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65931385
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF2DC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691470388;
	bh=Kxs+RsJpItuQUxpjnDQ+3tatGC2GVK37Z9wxHAj6r90=;
	h=To:Subject:From:Date:From;
	b=N1Nr318AqDAQPzdN9tFO7cxVLSyHBxUSHLNux3G5XgdluV5F5NS9wEpoA5jw/VM0P
	 UG46lqpIZWsTacrV5dbpyx+Lxtje2ZE34ZBR6cl+AdssFylqePSQZ1OebEhiA7lDDu
	 N90VfeJlOwaV/NOm2242jBF/9SjnYgaxwNb9npCuyjrbNeuMcJivyWWdOBftdGBTgG
	 +sjVolJnIvy821adj/VqTo7B8HTcqdkbnqxXpn22O3RY0U1R4KdK9apHUj8laE/W31
	 UzruYCNkt+wzA4111g/1AhQwq2F006Ruw76QkiiUkQv3gSaMRcAi3rXuSkqkR/DsEV
	 yIcsbiQGPMujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD20C001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 04:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169147038870.14013.4028351622530414381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df400317c8c34f8f109d4b260550ecdc433a8153a96ab13612cb6ccac725152
Date: Tue, 08 Aug 2023 04:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691470388
