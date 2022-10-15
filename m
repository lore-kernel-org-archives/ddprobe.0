Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FBC4689
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B8FC433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665792053;
	bh=k67bfDRwyUzXtQ6BWZ/KbNzjDZXrs8VbpFjloNbom7c=;
	h=To:Subject:From:Date:From;
	b=Oxumlg+47sP78MA6/oxuAVtDMqpRV45nPS3MZfTFnPkQ1GUdjyuK8/XgPJOYRPkO1
	 PnTSpds5tzwVokpKdOdWM+l9oriqIE82dGdZYEEYxY+n0XF/cgeoA17vDdRepVNY4b
	 m6Q8FpjVR8UpG5OerbYgfKAixRqm01fch6Br/8A2gPEbnd+bR8DxTOqko1DnYSUR1u
	 /Rvm+YwnoLp8/Rjdp7HFPfqMuV6sMhNiAxuVreUapyRi1g1jZ3rsIY7wL2rd8Tlmjm
	 q9Oqxz9wQR704GxxPRxZR6lPvP/itIj4zy/2HrhQNhQLwZ8UvKlEyxPDbWOkNmKcgU
	 RAw4+AcPTGKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53534C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579205333.8980.9979391189360218881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bb08bff4ee152b358d6348eafe7fc72ae9de01341346f3b6d11a293f996d05
Date: Sat, 15 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665792053
