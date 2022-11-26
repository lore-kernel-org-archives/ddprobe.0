Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B90EB2B
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81126C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669461054;
	bh=ngvd8wjQo77rd76gM5YgdfQP7OpvMa0Ct4Mz1flyX68=;
	h=To:Subject:From:Date:From;
	b=g8YARscIcLICdmOI1N2WuiKRBiT4UEZmhtMa5Gh73IIIX3A7nRSFbWQ0zZC2A5rsQ
	 F5UO3Vvufgx3lLARc0AkemuuHNZSYbhG8M+yu7jJWZRfqZaOczHwZ/8aHJiRpf5BOa
	 CZTZ+ePH71vk1HAQqzLKvX2SRWl4x9UKR9e6lNYuh0AEQZJWsMr3GCK2+H83uHRbBl
	 9NDzPlVIjF0qmzhX1obSfMBlSrfJ3TnX0/MGeErnDCpUOT5Ocu1SlA8dx+Dk7fg0HB
	 EPPLkmlUWHE6xeHePfvt9tM4r32ANA3WHXVzKPEN9ee6W9Z4ndYZjnWSpeWHzBYaI/
	 eQ0eprItqDgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65069C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946105439.30678.943746246122708258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0249bf72e749333b95696f99045bd88f33610e62c6891d1a73a382e558f0fb29
Date: Sat, 26 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669461054
