Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967F610F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67CA3C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669912854;
	bh=N9wx/lmAidqbzmZQB6stUb1RYRJoF4rpbqlgdm+nCuc=;
	h=To:Subject:From:Date:From;
	b=JKG19pKs9/qt64U0+1LyqfKS498QUiOrVdS4gbyOtft5698juGyZoHgUTxeMtya2D
	 sX2tgctNMkP99vkxajRT85EEZG6ZCyNSfQNGB9r+LOqaLu/uLXIbIQDTi5wY0EihhT
	 rYeh4aHyLfpQ0+qyxgU350qZ7A0RWGlGhWM+KCeoEG2vsA/ThpSgEoKMMpzfyv1m0G
	 rLfE5FrVowGIg+y/hwylFscv4YCBMD6vM9oTfduN9HeF8d1tPEuXrOIwSooFqL7G8l
	 VhSbp2rlV5fs4Cph/Tef41qs3hi5kpPDWuJ67bVSrRg2lFm+8N0hQV2wgCKv3+sOnZ
	 xJqzQGqOK9lfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F56EC47088
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991285431.6704.5399155947824526069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa0fe784168370c2d02264dca49dfba6b843a704788a50550cdca679ab0cb55
Date: Thu, 01 Dec 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669912854
