Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63221FCB
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84388C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670773287;
	bh=ldmt+FPxPlrXUTv56jkvdc9pMflNDc36V+z9qUkqRFI=;
	h=To:Subject:From:Date:From;
	b=HR0dVYdC/4v7SEMG9LuTklXZHBjeg/PwvWu4rlQuyrg/3XcKnSyPmfJMcPBxHuZad
	 8fblF4ZVgRrSE5sYkcVfnElMV39sLoUERHHjhhZZJyqWsSU0NoCrhxlyDWGyYfoLzZ
	 S9R1M1DbdFCDp6UQZFkhsz6iwE55LbgXKZgfUgj8k1ElvMGZbFVZduauX0XrLh39Z7
	 oEoVx+7bdstx5HggnaUDFij88AHgpSGdJcB6DurLY+1NE8JBjD7SI5i9h4PBo9dQpR
	 kQaGV3VS2mgzVZF1UDNwSi/0FQTiQYnG/3GH5ZlTzZx4j/l2dXgdCBnTjz/NWJBRjc
	 dLuKMiL1whuOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648B6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077328739.32479.5694338336086193416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b08bd22d66e35a83f4c27b243c1f4eb59f8be5ee9819c0ed53da6bbb372e24
Date: Sun, 11 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670773287
