Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAC5650
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB19C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669706454;
	bh=3lSkfsmaRIOhQTc8s9tmS/ES7tTKqmDNRkjBpG+u8wA=;
	h=To:Subject:From:Date:From;
	b=ReLzb4Dk77Zcucin+ELdsRMn8eg5W20MlXImAeedHimoQ10O4shJsn/SZDQHEBa7q
	 U01drVRZpvejuuIhXFO7h3eO9Zz3yqEiWybuS6XO6srJSHPy1OMSF3vqK/VZxdYRcn
	 sPansgkjbI2y8y+UBa8ILsuxz1oIjlsRUK+tbt1C63es8GJg1u8BMCkKm53OBbICfv
	 1MHc2IarfcK72Flns6T+JDP73LuE2VhOJuoN0he3jg+ewvS3KrAe7LEvDxeFwmt2np
	 yfB496uM2RBBUVOezy84sF6bwCK86aQ3RPQBHd7/Cz4FCSytpB6kZwU3FGMKri95Gu
	 YXAJ44Nwrav3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53160C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970645433.3612.4894445061443673309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9eb95cc72aaaa928e899f0a3ae53ae48db19ea813e0c0efe4379398fdd05cd3
Date: Tue, 29 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669706454
