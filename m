Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D867F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D2AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666074053;
	bh=n8U+0nxQfCOhrjuoRXqiVm3PYi3e/Qib/u2sVNebyTc=;
	h=To:Subject:From:Date:From;
	b=gj9xNBSXAdpNZrX7WpxaCsx4Khrnq8mvngPHIlZfLzNG+Fqa1AtsySz7fkH6t7lPo
	 XLtY5lVvKavUB7C7a8UTf2iDckSd8NARkU1xCkk3PKRVl2jKRX4pCfuROMmCc5jirD
	 ylqox+/5WZnN9ofofIXddY3pm+ZfIdC8yNO9BZMz+Hg3nKJ8jEO9TJHXHLvRKqxWvf
	 wsDZXZ2x0IMmRDuIKCQNlMNvO1/iZV43ozL6Eo+pqrcmOOw3ZqA0FWzNX5QwwCehPY
	 QSNP6KB1/t+tfADGviyl9sv8tSkDD4qNEhdpTLC3bGvicgCRQZp9cHQbfdd+WmkLlo
	 mU40LwVaKi9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D1CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607405332.8340.701805129942984961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9deb79d21f6a0cbbe541ccfa297ba40008c90838e81f940c33dda10537ba5817
Date: Tue, 18 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666074053
