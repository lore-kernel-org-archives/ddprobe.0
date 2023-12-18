Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC2EF9C6
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX5Ow6PL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C39AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702886296;
	bh=gh00vv+jZRtFN52pOMukx6K14myMWr8DX9YUhOwvYW8=;
	h=To:Subject:From:Date:From;
	b=MX5Ow6PLQl//9hcyanREaHDhXF5h7g2GZxDkB3fnBcyBfq8g1g2PX4HoyKhlKXyE/
	 x9vwKoFKxw/nUEgekgdEdkXINRl5tDdaPI7AEGMg4l9zSCE00YkhYjZep9lY4g8nkG
	 PgZoRErs1pXaFFXxppajjYuWYCFF8Z395lmRgrK5i/GZx/Y3CeL4JrWMWVQH4/t43t
	 3YUB4qzTstLRBM8Xwd+in873UFKskPqZnq+RAr72iF5uS0PVxJrCR0yK1q7amfn1cm
	 G1A2vEJAQO1jlpsU50T7Ikd06P1Sn1lj2o2Cx7NEboB/Bb6Eq/bTlTwlghLxVUFNpf
	 hydZcjEkl8R8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6005CC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170288629638.11717.4743437220146958629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671a54479e998920d8c7245c3d177fe3b568208cb8338d92396c56e21753d1f4
Date: Mon, 18 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702886296
