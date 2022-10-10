Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD58F1FB2
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86FD7C433D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665375653;
	bh=gcQ7qzYoN3fDuUoc8PX3B4HqxpUTJ6G8toCX0/us5lM=;
	h=To:Subject:From:Date:From;
	b=KFeJ5qmH4cJ714eGrIWi3f+CYuFU+jiu1cQVa1RggSYheovXo4UgTftKgKARNzArD
	 7dKH/0PZEz46J9RRiZQDBn0EHPNJWJusHty2ciKw6yuu7eggqW6VnU8Axiel74Qx3n
	 qdDZ4xafjo+FzjeWsqgjMYQ+mhA1CB1PqS6LHwSuJ/pY4AqsDcepTQ2u3TgISV7+Nf
	 7me/x7GA5unStg9dCuhaQwxy5TdgGgNpVongXBThrDL1vYmdu3MdO9j8hhRSQEapQN
	 mr4C1D0TtMuK5kJP142wOqbVQjGldrg8A/wbCArn7wK7pSjNq+ViMbeP5aLE5wUW1n
	 fo2VqvzJc0CQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649ADC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537565337.15859.13338928548555383777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f534105f502d7fb41be82b16ad5f2ffce2b1a63c41fe43f147547aea375f7451
Date: Mon, 10 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665375653
