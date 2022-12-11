Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7885399
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB71C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670783487;
	bh=miiBry4M3vR8S1pyefojyIpUDaFdRBXsNNIyL1XQLaE=;
	h=To:Subject:From:Date:From;
	b=iHyuai/wwoeSDmno2j7sb5jO3Ti7MoVb4zl3wXL0hCREozsW1eoDUfI9ZcTKzWNBM
	 RJFMdW4HpruvBYgXyOTQ6OheilyONTjgFoWzelwmaVqCzcdmklfRGEUKIRldHtgNeR
	 ots6pbi8ka+2DIZuDYfym/VwpX38NEefL3vVdD/bjvQzNhJqUfyhxijolFN8mCOxEs
	 d10E3lbH0IC4ddxWzvpStT2OLXiwM3+TKDMsMpr0fIngZ+Ay6kI1+yN+ZkyF51ZMHu
	 W6RG3iieI7jSOTy/xZ0fccs1VAwA5Aw2lZnluzDzawmRzSHL93Liyy2SPPKoUL1Ygz
	 a8jCri+U6NbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E87C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078348739.10768.9804410122902571300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38be3b6a001d4cc6c0b56f11da1d8f4e14357e51f590a90a63d8eaf48799e8e3
Date: Sun, 11 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670783487
