Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A487E6
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 04:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76CCC433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 04:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680756425;
	bh=+/8F2QF243Z5E1/AT11MzxACpJmS0qoBzWayTPxEXy8=;
	h=To:Subject:From:Date:From;
	b=ggGzgd86SqVddFlX/BGX95/OtKWpuoF13crWB+42GGBj4gBn0eFNz98HecJ835zYj
	 1BU8QBweU06c4UH8/7hc3cSP4k1G1YjendRTmIrb3WqNi3Y5kRckYW1orDeCcDYvVI
	 4Gld63o80NujHXbKIwWgiiQoChMVhlmvuZ2sS7ddd6WFRHf2mueffCn7tdb0cF5vMB
	 yURGSciuWwfQz+MnjYHxKj81svN+sDTlAPxpe74RDLfURhgIB13Y1TAELkiYVkLvqY
	 mePCfxwcUb2QQ38L99DbexwQmDbIa8yN+xA+jtkbsU4bHWyePoccWWbZDxGr7AWaVC
	 FORR+PYNEMckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA43CC76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 04:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168075642575.20415.1604182924137935377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb995ac1bfaf15d2ff39e8491e26830554d16b492869a7edfda388488e95a91
Date: Thu, 06 Apr 2023 04:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680756425
