Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710D91802F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3296C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693347248;
	bh=clY+omwXsIPQUV1nroYcH3k/2HWxPUXie2sT3j86uYA=;
	h=To:Subject:From:Date:From;
	b=gigYnYbZzExaA0F5cuOIRytcw+/hjGoZ7Z/KU5EyMqrlaUzhq4Nlwout3ctEXYkLv
	 7J/9X88kpdciG+XOe/YR8LL2z2aX2cLK5qeA9yA7ZmMLM65w0BrQB/Rum7hOC9z83G
	 8JUUabMZMC9tur+fQ3cSyJQhmi3JcBaFHmDnYZ//Tbtr4mLtDXOYcNEBiO9ntHo+NB
	 YRY8Z9LxMqtPYBnOL4NB2LWDKUvt6jauI9axxPzuCn1iD17mwpVVwu+5/5sADnouyF
	 Sr6r3x1SBY7Z0wFJSBwvdKVntkh4rvzLjHy4DKYZkeuR58BaE/+mGkm6ZySAizKzFh
	 Xn2F8vRmTsXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9211C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169334724868.14236.9732125765983494081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0396d985ce27074d6852074c7ea222a8456b9750ee3bef9b9a7d7275970e7e
Date: Tue, 29 Aug 2023 22:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693347248
