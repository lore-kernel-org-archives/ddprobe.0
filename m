Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3401369
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A63CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665844853;
	bh=z9DebbDpnG/aVWihwpApRfPuezn/zV0UUJom62F4mwQ=;
	h=To:Subject:From:Date:From;
	b=jJ2R26s7+vpfkkfTzviHYOBJ2BtnyXLLHnONq4bXHP/aL7hH45eZDH8l0PQdhmwjZ
	 CrXe6siLoS7Lb74AAYZB50m1VSY/l5GO7XD3JZD9/mJIs/EzamGjymQ9O5SQ3eNIQ3
	 V9am5ExhEQasafjaDmwVzouqugU8Bp26qvz9fBLhLlTy65G74aA/hzWOSxziUyyvzh
	 sUsc96nsCR7GeFGG6iCCiuiQzUxvrjsu6SiaUWWPg3X3Z02r5MC/hbjmCU3W9unxaI
	 749ebrkd9q8lvwfy9hEUyaLtzvSopim52BOJ/DTRygzduJW6Lu/6DAwcJ9Y/f98q2e
	 MUIDDWxyMeP7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512C7C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584485332.28663.11362028448801825428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279a7594789b8613a42e948bd9a62804f366bca860a457cc641f8263b76e1de4
Date: Sat, 15 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665844853
