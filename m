Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514D220F0
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07FBC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678075625;
	bh=pekZPRmCGX5/3v76W2PRfifDxQO3i9JyAQ5XVZvgq4o=;
	h=To:Subject:From:Date:From;
	b=RovM5IGim3ZdM5fHekeBVoU5+LAxRkkRhsr1uqKJUnETXClIImN9n9wuaUbFRK8O8
	 wd7MfELjWMj9EsOlLtr0JkAl5/01Cfjo8Au4KD4puZ0MzMd9Na90Ys8E4XEzet6t6L
	 IcCsxHWqm7JheYGxiD2NHeczb7V4k9jhT9khLrs80Rk4INtlKDNhqPU1379y4AaPf6
	 tkskq6jkTLrSE625/oOSAIkySFj7QbeUCBa0H68yxNli3kiOjCbnoHg74pqHn2okgO
	 USUN2Tk5fOiFtLOlNR414jRvTPA89zr2rRWLTitO2s1/H/9yBNjQJCwvX/3wpBhU5P
	 2Dx9INCiwukkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E6AC61DA3
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 04:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167807562573.3066.12050905018602938160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77866ebced8ed0905b4ad3ba6369839dcf8c9c44e29a5fa82be984e58b24d96
Date: Mon, 06 Mar 2023 04:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678075625
