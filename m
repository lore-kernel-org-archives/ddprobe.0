Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38361C33
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3CEC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665244853;
	bh=gjPo8BzgQi6hMxbNCxcGI83H7THx+LrJ710qoxJ6hGE=;
	h=To:Subject:From:Date:From;
	b=DAhKH0RYyC2SmYYOa6T+UgU1+wZ4exAIxRiPlG1Q/PhkhYN1ZVk+cgXVismSxrsmt
	 FJpA9mvuPJJwMXaSgMRKRatVAX8z6YDlimEZCZia+10+kCW0UE0+CoeOjBbFVTLX7d
	 elThge15J3rNORr/WCLv8tDVfQdB0rYb7LPg2jT5YYhAX2H0ypQaWxCX4ToBPcSipi
	 6RofnVLfxaS4s0KvCHD+XwVpjrz37VLpUBvOcowoqlTDg1RuOROUfcIX+ney/ch6Ms
	 2wh2otOB37VsiaiWnK7ci+1rewwxuaGA61zDAIf/6n5tlJlFvogpLrh83+lXwqJRFj
	 gmgCtszXwwOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA9DC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524485334.9335.407308632334344559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d428ac719433ca0d33ae3a97902e8876bc293442bf2898c39e7f59bfeee75d
Date: Sat, 08 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665244853
