Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9227B6AD5
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C08CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666644653;
	bh=ZZUlQpFBpHtA9kLgkr4dscchhqWdY5wxixp7OCQq6RA=;
	h=To:Subject:From:Date:From;
	b=SBp7dV+lUJZuMIsUSCZsIVBJk0ztNxkqeaz4BZlmWAcR6KvOpAiLixuZ5cQJtyDuv
	 FdoxAojVxGa1q+novErQtc7pBcckESK7WIQxXEBhbQTxeNlIR9FrGScc+pt5mAtdrD
	 ZHaTfaZvERv/WK+veKioAlhh/T46g+EbNc1sHVE3+o4bHHi3Oh/afxYrfwlCJc0pYD
	 /x7XehVBXh1ERWHOiN5PrKr+zeCLLYczZ4D5wOEwfi/YhvzFAAYSMNOJUamigC7Sz8
	 AuvlItcS0Pi/gKRS155i7awa132lSMyT3Q8CQi8PsyM9pdstzBv0X2Iec9dLgjRQi5
	 QWAxcbEPPLTDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5104AC67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166664465332.16788.6345456605067346628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db55c012b0d071acaf88654055fd2c368e19e12e867412707323581863c7efa5
Date: Mon, 24 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666644653
