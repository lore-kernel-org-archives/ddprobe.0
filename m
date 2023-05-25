Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3667023D69
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9404C433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685058305;
	bh=wildzcXM+ys6rjQDtWaJWPm1tcC7g8QWGWp3tIsYI3o=;
	h=To:Subject:From:Date:From;
	b=Imy9CfozR5Ol0nPpQJP0RQNYjo15qIoF1VFnta+29Mu+H7A2DYkXi7MYQ4nF+KsA+
	 WKQwVAboDINZDaT4h0dM1JfWLuFzo/iAH3qdzQfHgUYliNqaruVwbKE9UgmJI5UffB
	 ggtN9bKqlqPvPI7SmOV2WEkToqIZ2uGp0Klm1v5DfS+Ju9hm/aFeYE/rd9c2skx56t
	 JYgSeHl3z9GuEKpY+15uOyZUSqpThCKTF030Hpf7UQk0qSZq3MWCVkEC195oB3/70s
	 4wdTQ3kQrpC4fzNTcYjrSHg65E7nAKnNOWJvhyBalZc2kkDBy0jU0wIV/Un4AmCocl
	 /U/gUNo5hf5Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC11BC7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168505830581.17101.3697540477237552712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2681c39158d7d79351a69423a7a5b594c8faaac7515feea90b993e89ca201718
Date: Thu, 25 May 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685058305
