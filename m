Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D1033CA
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827B2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671378087;
	bh=M/NC2gAT8KliJFjFkhSzTh4qhiHwnZM0Dc+qUVrkY0o=;
	h=To:Subject:From:Date:From;
	b=NATEgp5fVs+3B6U9MvrFpzFsLTrg+8DIG25b6VKgTVxxHIrJbWb6WwlLydiw4Ml3K
	 rpIBcWiFjV1gf6Bfrpbcmz9C5NXsHq7qLxNDXndLgWC2icTrgY28mHH52yJIKgBZJv
	 Z9cJ+JZ5YiJatA7azzZtu+9aOzA3kCdK8GhTQonupWuqp/q4c5Md3gq6fMOTT9QfB3
	 LTakC4G5lBfKbtWgvzWZI5C54Qduyhi4fg18Q1ZGnHn7PTQbmF7W3w6YpV1qXO8os+
	 i7yO/8syCWIRM3OmP7TTBfw+jGTSA1VeLEGIMZy9pKDpB6D1M9RolG/exl0te902gW
	 TBQrSPVMxBNTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679D1C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137808739.32057.16907368464001855505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac974d290670c15659e0f68e1d9af947bb853a656bf09024cef84520cc39631
Date: Sun, 18 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671378087
