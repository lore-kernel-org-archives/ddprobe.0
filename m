Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EA97C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D695AC4339B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674474185;
	bh=NlMDaTx5cYzT26eYvHgg8ZerpeMSNjXHxVyyQgS6ZVI=;
	h=To:Subject:From:Date:From;
	b=sShCBGjwHfBk/cQbLEdFci/6hAOOeSNriVugohW3dB0XRCr5Pe4EghrbwkmEj+Rki
	 epu3ZL8AV7sZSmLRfSyiOuWdbhND7O+MPc+MqtG/co+HrZ1bAGfKIyUEIwpM0r1Xmn
	 AoGiEP6UTIbJFzItlBrbAwMdl/t5ytd2UM4/CoOjufxxvYt02xw19PUDbue8b01w8K
	 s3ZIBqBaSI/nV8/0Zlh0xZdOThDLlLCPy7InFzXAeYvNMXio/PrtWEKTm4+vA3hiQ5
	 JTZRu83tOvn01Ap7YEELTha+gz+pltfVNVlGoS+XCXHcswwO4AcXpbIi/IseYLOd4G
	 6o0qSjxkx4lPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7497C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167447418574.21123.9645450151993991043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4ef2f054bd750eb921a08949c6881f36f93fde6a5db0d1880b8299fbf6ab36
Date: Mon, 23 Jan 2023 11:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674474185
