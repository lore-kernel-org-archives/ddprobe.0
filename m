Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7AA15A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A25AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662366653;
	bh=I44iF5iZTGiKHkAf0yCXM69ngKtjM/N9sQ5prncrU2A=;
	h=To:Subject:From:Date:From;
	b=BonealCaeU3eHrU5K7HqEUAFkT+/SwxiTFaGsg+YHkj9d7tNQdrN1/1OlMe23FyQm
	 OFx5biHDgXqyqDjcZ+1SWnO6UEif49mbzy23woTilovAC/VOHCg2R5DuTFYPGvbp0v
	 UW8Nsw1OlQJeRnaps0I0ORX4qcI6rv1m+5Oju6ZfIWEBrUTe9vcMaYTtSJfgs4UiKo
	 wX5Ba775S2+wAFtrwQ1dUSnz5Ch4xzvpXg0AKw9YPXsW+MIG5inoz9vpwlGYJK4fUw
	 G+ghIJu74UIPP+t2X1iZbu14IVkxmjNS8jcBpvpbvT/c4co1udaX2WR4dIVoVU0fCZ
	 cPFJyfg1xOpoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C9AECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236665334.28118.14133891583214278619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc97fb656541dc8c852dce39cffa1226840ca51d5ff5936be9dddd3e2c60641f
Date: Mon, 05 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662366653
