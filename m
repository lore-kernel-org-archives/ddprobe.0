Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB501E9F3
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71AC4C433D7
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667326254;
	bh=IBjKzIDL+fk7gfm3vkgng7Is8/5U8ZqG8BUJrEDtscU=;
	h=To:Subject:From:Date:From;
	b=OuuaxEN239P89oB/8pbT7XOGITyPHyowdFBIa+mNBN2dKeXtAynZd2KTBYmRE/OhO
	 7vYzNFcG+7qS1H/K3lPhKc2wCZGw6rJIKFemY68/hpCRHn60TbdyAWKVSUignswGhf
	 0xDapPkM/QHFHaurCzgyJ7BMesIxFFBNUkQbvJYQv8+UVSoBlLMtvRHwUcgePFUmoP
	 HMTXHpnoSQv45YqNtEWh5YZOFPtT0WP/i3Sfy2sblBv9OJhzsiIsh5KB7fcM6mjFKW
	 y0CZluMBNki5lrh3xJfq0dVHtmgOeauJnllaycw8koR0DXr82d5PkF13gr+TB3AN0y
	 UJZXIpvcYB5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A4FC4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732625434.23368.13154077562753432173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486b7aa0eeaa1f5f363356decead6c92442ca97b6470b623610d7d2ab6b6ed53
Date: Tue, 01 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667326254
