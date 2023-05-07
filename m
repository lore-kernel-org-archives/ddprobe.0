Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517317E
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 00:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C91C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 00:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683420485;
	bh=oB4cAwJ0Lov7dXhp29MT9P6k5dF1UapN5+Ll4ORLSwg=;
	h=To:Subject:From:Date:From;
	b=RglDAA+u3qPzrCWCOCJqR0jYklrWoyzygRlW4mHqQNIEeRspyHeaZUwEG/Zd1eadb
	 9RJ3rBQKzQ0DBnXTCDbY78eVVSpt2ke/mtdJglIAcW6//x85O5yn87UHz421CHe5vb
	 51jFfj64i80oAk09AD0bOnJt6YwCap9Bcs/vqtY79vZO2BQQ4WDJRZO1xG3qqro9QY
	 DW3yFQ0KFTrkXbLZ+am7OywLbmrfx1Ttcurk7Cp8dtKA1/W837MyvN4FW8e00wb9+a
	 g1pdy+kFcS9tNPbJq/fbblItiWxjSEnUHZsTdsIeCckwhMEAogWxjASVSeHAiHCMTl
	 hJaausHucZmUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7431C77B7F
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 00:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168342048572.4821.7089249292605478347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59685e942a22fa779989876e686c536b27df1ec44d2158f0c3b896816bf74c3
Date: Sun, 07 May 2023 00:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683420485
