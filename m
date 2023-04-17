Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE781847
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF24C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681706885;
	bh=MMNc6fCYL5Ou04gSaMUsdTBy4xKHLUKRhC1XgdrWtmA=;
	h=To:Subject:From:Date:From;
	b=nvJ2EZCloiO9oDnZ2Q0TLsUqYtFkOB+svfSO4kkQMNnftRhXGjZTHgYZCFZq3v1au
	 fmMniQ7mKdqjlKD8rPtyz2O0S7RmWgh77aOEoltY3xLraX0vVe3s/HiG1vXCqt7v1f
	 cJO/MX5PmxZCheD3Wgks/V7F6AEl5sUZK+9qEKUtBy/sGMNqoTxGIZiBLjwo2IZP0H
	 OumoeTgqQWh8Xp4ymMZ8lZvugwM4JPJZkzORWkW+aTAXbqZhzXk3e5MslY1LqF6ECU
	 hIcmE93Lrn5/6+2yuRbQiDVxEdhhAwYFmFsIhFD3Y2YA7XEKI3SjKC/RVceBUAiOLy
	 CUyHkNVsVp9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDAEC77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170688577.17563.9015948283976864899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ce6d0d0c2a63e3493e86082cc411785367a2bc0a6dd6fdc5d45b357a4d4cae
Date: Mon, 17 Apr 2023 04:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681706885
