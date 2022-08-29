Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D722104
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6801EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661751052;
	bh=TVRFauMhrMGj7frCnxwlkVDLIXo6BQfwtF90f6gc9q8=;
	h=To:Subject:From:Date:From;
	b=LVt05HE/x3zWylcQFMEzm5h03Nv52CdWmPXbB9ZREfbEKn07N44tuSyNB7H07xDea
	 rTGWJ/6k/73Zs/JGTFJEMPA7hTfZDushz8b7qL0H4fqZFx/XOT1RxNHkZWuOcE9uP7
	 M8d1tTnRL9OlMPMNgMEFLxRq827kx7EWBxF8wo7mxYMvllK1SqhkGvjPfZGxeghdbI
	 ljg4cafjDFoLE8J+yrT9fumUU7OBbWv3YiPtrnLr5iPTG456fFCF0IoVSy5Tuc4wSy
	 QStJ0750nVl5ljHIQaQVHgBPsmO2mPeYe/xpKjjmu6RxbfkH9PzfWHD9drwQeDqlmB
	 o5Gag1kY6eXHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51856ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175105232.30835.6497585995107912325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df46c5b199431a786854a9426a3377e77d193af2f094a1166b0e4fc016d9712
Date: Mon, 29 Aug 2022 05:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661751052
