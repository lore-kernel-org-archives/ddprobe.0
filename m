Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA03F17E3
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788A8C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670352654;
	bh=1/90pbUsaobrW0VNjfsLCbdRy0gZnNa9wD7sc3iUCxA=;
	h=To:Subject:From:Date:From;
	b=Pjc5oXpnvdEwl5G8WQS9F0e3IlZgukLW/nJEwI7pRqTETnJviyTYXzlZ+2JZpwzLG
	 m1kIQFouezPci7KiyqPokmA0lcB/5fFHmx5xgonrJvmonvYaeaLk94MThLMR/Wr4aq
	 dzO6iwIml49snr5IPh/NVdGPBOS+qqvMczpNbF2aTT/pN9TFouwQX6sMNlpQtQaJDU
	 3ekvVtwlyEZ5AD6ZX2p8isbum1WiZewhjg2kdfju0i5Yx+XjWJH0oTm181SjgM0EH6
	 gcUkKwgMmgt98gtI7+DJdZ/POaaAI+qvpnLHbXYKorh9DTIh0Sfw3ri/siGO+RofOc
	 jZJfkhuXYDp+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B1AC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035265434.10708.3819440944008727081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e567278a2d8c23e85f9aad7abc197b99621c6661757fd11c291349a5d43363d9
Date: Tue, 06 Dec 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670352654
