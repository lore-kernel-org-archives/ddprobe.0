Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C1CE57A
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC248C433C9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690499528;
	bh=78ZGGWr3hirMuKQDwSxNkLAqJgzzzPJBeGitFLHAu6o=;
	h=To:Subject:From:Date:From;
	b=bVNxmsrX4z1IGmt9Khwg9kS+9R2NjIH8UPcPMfxPqUZeZxntmDkMUXQazZ3p/q+F4
	 TKrHZr6j+Ws5B1wJEMGbRmNeDwshU5E2WKrq6jtEPQwDyl3q+tCSwx+3cGk6zd3nLS
	 qZsisN9o0b5e8+DOUmmarhCimoWay7nZ1A67avgqxywivguRS9RPJLGbIRTU+sCviV
	 X2t2NzfLZTGnMfC/vdIINQSmxL4gh9ostNQkhUx4LITQyXvqfwTPfsCHuxHDQw+HdE
	 q6+Osfl7SD8aRy6drPWch+E1nihpsm1e12fYVEFQMt9vL/tYmV4tIVfuNSLR708OT0
	 RadnkfnrxF3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB58EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169049952868.1504.4624666788592811496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e46fa54b2bc9c6bf5e18175e6bc9671b1e53c23ce042aeb9b49d391a8aa2b92
Date: Thu, 27 Jul 2023 23:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690499528
