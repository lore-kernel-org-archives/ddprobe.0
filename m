Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6FE63C9
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/v48+A+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82614C433C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701234496;
	bh=Jh2RY0Sz3QnVTF1GNQtthgf3MYIFEOupWVONBo0GS/Q=;
	h=To:Subject:From:Date:From;
	b=r/v48+A+iRuzY0JjcQnrPFfLiAsZ4/1Qpa61RQeR8qUHT9VgpAorznrl8EEFHWs39
	 TfPmI/HXATEvyFZzLNI4CGm82ByCzrZ93k7bxvc2HbqhmJ1spQYYJjIZNZ2laPY8k+
	 8g5jv9dDRd9PfNXcFutWhJBo+DKDief612xtbY+D4Y3wiEL+kaTuH1IvZK3AHWrv+n
	 JnLH73tSmBB7axKkx6uaGioFIw5orR3DaCc3R4Ik1n6VYu0XkhsUeTP52aiTrtB/S6
	 a2Kx7P81KRoiXEtnc8hpHfczyq4xHDbrWqFzy3bGRo52OO9qegTgZEDSbEypZi9Hbk
	 l69D6qmDevF6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69023C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170123449639.6020.4756059546647504060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20df29dfe6506e09c57cc0e62a4aaf3bff63481c59df3069eb32fa235f57529
Date: Wed, 29 Nov 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701234496
