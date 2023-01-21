Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334B72561
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09E9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674309725;
	bh=RrkrMvWr+p3qiJhQ2zCXNid13YGK8cvaDwWEK3wVkQU=;
	h=To:Subject:From:Date:From;
	b=JRHAFX7acsg6RhYqh2BvD4SVIKTD/wNTqHObbp3I7lf2tcZLMl8LRocOsU7SCHFUw
	 hQUYHEEyn8um+TyZCMyPNQVd0y+u8wyn9DTDskyclcD7bpw/b82uyTV8osUMSTx/BQ
	 rW/3048H7sbP0jk4lswRXI6qrj0Rwt2KRTlE9z66Ki8Ofnl848C17nLeYmCJ5aQ+ha
	 ZJeCwL0DDfqIaspSY/iV0274j3Rj7gqX5Gp8umLgkXCXAw44nOFLmea7ZYeKC474nM
	 dodFl4xtqOKhLmeQuvMhlUBGvVArmeD2gbl8WYYVAfXs1HFKG/nsR3NIqogZdoltLz
	 7CB9hFUSO+I4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3229C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167430972575.10580.18099767217462908619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd135fc5d9d1945534a528a20eacf703bab7b581e3ec584de25a882052713d5
Date: Sat, 21 Jan 2023 14:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674309725
