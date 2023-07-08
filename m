Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7624580F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9841C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688856428;
	bh=FDPspKX58xVI+AAbcJWmpH2mD/cNDwTc9h4B8cu7a60=;
	h=To:Subject:From:Date:From;
	b=HNJOar+CD0ODnaK518YNdNdgW0HiaRT74oXljiVgGloRlLRn0XwZYbUmzlN+L8yp9
	 ZttOBI70JZQNwWar3kwfAN/9SXPLrfEEgAQMqNObHtAuWKbKks6ccSmYo0E+Gu3f5h
	 3xxqjK65ol+dgXZ+MQfS/2/i0wXuHPm60Fc8/FTXlJ6+c/BC7I0MnA19riFbjSRM/E
	 ncPeWVYTTpSTK/+lZmedYblTxIn8BsmA6H5mf+GPe+mlbwhRnVjRAuMgg70jj8I4IH
	 IdmFD5HBXmds79yD9T2+eueq6h0/xydFnmAc0FVEflZQYcNu1PpyKAIgTiY/TJ65g2
	 cg+jijwHGKXdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA6EEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168885642870.22994.13654207998727820737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5237bf5d31e51ca4945055091373203cb946b3f2827bb23babddf91177e6492
Date: Sat, 08 Jul 2023 22:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688856428
