Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476B11FBD
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 10:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC678C4339B
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 10:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677494765;
	bh=uXxHLPcoEKuwtxupeX2nMd7xbq5uL5kX8nRfaywV1TA=;
	h=To:Subject:From:Date:From;
	b=oUaKfX1LkAyep4lLNAIxnSShMZ0kv3csZdEvLMkHJBArqxoWYcMz376jBBQHW1bJX
	 tOSv6vi9k/5139IgbYVR6ruuUe1W7sPCeaZcxURTMer9ddzN7Yr4QS1u7EZ+oiPfwW
	 M2DrlGtKNE/y3MQJu+J/Ff8XvzuTgwdwoZaAYRZv2Qu1a74q+geANp1r42JJJZtnpo
	 XzsJ9kJ66qrC3f8sp+BNVgwHejTotyqD21HuzdI0oKQGY25538nZy+7RHu2Vj/D54M
	 Sl8fTSSUjxaalj+wZCgn39wRU+79kfeaXz2znWnAvW5IXOUBNwIV5/2xici6qCQQtZ
	 PnpfR7uZLDIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF86AC64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 10:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167749476577.29829.17062520455868215494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76d4574ed62150defb154befd4ff5dddec088817a5c7e00bfd63b734ecc1daa
Date: Mon, 27 Feb 2023 10:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677494765
