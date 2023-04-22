Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6FD7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EF1EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682142606;
	bh=2ySGrTq/+xMrbWnDJkSBQxu9l0ryH/dPSxhXxVjuPZg=;
	h=To:Subject:From:Date:From;
	b=bDP8aW75JRheNBLA7FNxQ7y0I5TJ8aishTUTgjBZH6ZJXdz634kmBiERwayaCPlKI
	 lAw3xg6vetxOA4+Ve0opHFFaqioUDBZPH/2FE/tA3QsDFLmZ7vOGEJ9+LeCIpLxcYl
	 XZA/SS+bPXQu8MYKIzYTMzERXJJV/14+F6cFJVOo0qCoj7QTyinL3J3Eea9jBPdzCS
	 WpQ7jOZAYKo65MbqPRrhOXgk/T3OtJirR2J0ykrXdAXK/LCxRMEelRcJqBGODyxPJa
	 WSQ9Dlx791LmHmjRt77aIPgjqv2M6LWfDQWBbpo7ywSt/vqUdUnirO6ImabqaAH2sG
	 YjeDOoUdgXSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE041C7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168214260589.29009.1773421103186174780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f7f5500d03199b772fb97338d5fd341e460c58e34fe3ff4dbbbef4129b9eee
Date: Sat, 22 Apr 2023 05:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682142605
