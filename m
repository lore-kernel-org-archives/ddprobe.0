Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E77D8803
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA044C4339B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675122785;
	bh=484kffk5ZZlPlnjjvLndBFeDtPIHe4ULeOCGoCUx2Go=;
	h=To:Subject:From:Date:From;
	b=bgaFpVrki48Qw3MrUn+1dX7QM1VrJ/YglVwA+vwDBQEGC4cYaN9m0bkqC661x3vK6
	 01H897TmTbn5MVdCRyKmBH0tkZvzxFr/p4AvE8eW+bpDe2/TZizP5SdDOXQUVtVdez
	 eDlNGTgU/bclMjy4BekAQath4bkOZ5GvZ/5NAiC/5ofpfb8UGdcOtST8ykB9GqsUwN
	 dV7iUjpItj5uVTcBzmdjwy3M7UxTJUKuqvbXgezCWcXoIODbHllTXJWJxDZxJE+fpf
	 GE68nlxS7m5u2NhwDmB5DXTwN4azbixka3+HlgktGTDfdPOOgNO00sOGwx52cQasAE
	 MulviUKmOZRww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4923C61DA4
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167512278572.18077.12367170097247839903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5560240bd7cebb05a8f803f5bd1e90b89cab651c7affaa63bad4116d71506a7f
Date: Mon, 30 Jan 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675122785
