Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49352560
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A34C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670145654;
	bh=rq8Jzs1US9mrmFBcUmuU8hB62baWxHZZZMa9jgeClus=;
	h=To:Subject:From:Date:From;
	b=SDzPoBVUI80+94z7n7QbUErtC+PJNuDZSJ9dKD+11Lx0+SACMIn1gW+9LRakVkGwk
	 tv8qNbgy+U45Gy9SjGb4iMxrpI+ibSAzjwxKgQbZaH3v05cLh0UxpYPj9oClc6tMPV
	 z0RM2bVsZ54SXMbctZg8X20KxX7yOjwt8WXMZ5SgpCWlUDXmnF4ItNhJJsa8VfMg9h
	 mT7ckdBr4mReGlxAddlxgtI84qz+UoKehzEShjl4CgCHmWAEyPl09wmEmHoOT3+Wzl
	 FhXq68zwcaBz8o9K3i+kVjfFXlj4fvdr7yNclsGUqxgrD2czjF9xmApG/VWlCle3eE
	 vlk36ewDO3l5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F7DC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014565431.27061.6447838426060511851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413a868df2709b52cc758c590f123f10e1d88c18307215fd3fcc5b9e3df84ac6
Date: Sun, 04 Dec 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670145654
