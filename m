Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC3412B74
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 22:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATB5i3PV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D40C433C8
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696544828;
	bh=coRDN0/IatusEB1WgiaBasVNrLtVmEXrOCD+OUlRV08=;
	h=To:Subject:From:Date:From;
	b=ATB5i3PVj7L6m3EGTYoUMUWiT9Ez4kb+HtQnjPihyUuzJZMcEUqnYvfiLwaiuJ+Ev
	 BdN0exBLWK7m4FCfo+nqLArC8nrSmMYCz7Wxbwx50h5plQfsvLFFirwNks663KHmq8
	 CVBAmEiYy5LOu4m8EOZudJCdJqzzSw0vJaHq3/maj91OVfzFruf+YgOq5fLco6x+38
	 jrvNo+iJX2H1cMrUohW36yX1MVcOxzQlBT3BA187QaRKUHD3a7tEGNxxJEa9vH7IqI
	 n3akGUvvH29tpdrRY/aBwsml+r1sXHaEsI6gWfMSnpW9yJQydJT3ym68MCHA3jSEq4
	 gvq2qFz1f5ytA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44F7E92FCB
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169654482872.5404.15991133895490926219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed56edd37b23afc86d95a19caf8eb90659d28e2a9c835b7b928b0c64f92903f
Date: Thu, 05 Oct 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696544828
