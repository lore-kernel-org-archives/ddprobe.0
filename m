Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B1F2588
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF72C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668966054;
	bh=jVea149jELHqi6idcR4tYKQR0XrYq9OQxMmG/aAUirk=;
	h=To:Subject:From:Date:From;
	b=SZ/U+6ZuQJZEm1HXkSLexso38cfrJTTwUjGs6ESA+Rtw21qnAdjAeFF1VZXejUtCU
	 vLHEW4U5cZddYiqRlYbrLBGi7KGYnpeNBrNL+Fxa7KLEO46x7EBBZJv8H3aE/9Ky3Q
	 DvNXjf0XazgYH22rU3w3L7hhAkmU6u88+3GFqjwXA4OxQ0OqkRxIV5LOHMuXgoKElP
	 3kgYPlQCLD7LQZ1BBxplXuTrTbHlmmJ6D5eAUhWpKi8zPfvNSi1z0YC1FcKGJrk/Jm
	 lRc4/RZX64AvoTzKuDlYjC0vxgIN6waLoRsQBU//sCHAdjli6uMinqqA26IkCZWfiy
	 UsQ3VXh85HF1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FCEC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896605433.20548.12438118826093598178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5d0847993becb29d78611ca19167be6b40a8d51e41c36d57d92f4dafa37905
Date: Sun, 20 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668966054
