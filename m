Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BE279FD
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F09BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670969487;
	bh=DoIiZmrh8dq2MAvdtOCBcf2HotW/OV0C+msfgQpAWIY=;
	h=To:Subject:From:Date:From;
	b=ngTW53vGcSDn80Ru1ivd/09qKf9nw0GEbRsNFZ0aUP3sTH9NQMaLSsixxw1DDbQwx
	 phXSUaydw7lV9hecs37322VIBoLe85lCFa/83jlmS0hifALesbNu+G3eh+l+GOLjv5
	 PdYGHSRcHXvVTp0rHI9M9MVuJmZFSNaJcBUTxWVEgYVZEc4rk34G3UfAu1c2+zMlpZ
	 Kku/kHDcAvV1nHU/uoRMIfkNwpx0d1u6RPIpqvMlx4yqbE4mi6LoPEjoa1F1TtQniE
	 V49Fv37J8/tTyge5nLZs0uLVxorbNI/GdAY4koxbV14CieKUnrtxHTmMFa5jyZpNpE
	 EJkPcj5umdDYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 717F3C4167B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096948745.9067.15935083307919364646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e4511d5928c2af5b248b83766b55002eb9d05e7bb1989ebdbc613a35e5d75d
Date: Tue, 13 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670969487
