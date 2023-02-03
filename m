Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF268F60
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 17:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0011C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 17:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675443965;
	bh=j6x5y4CLrdCsIdia9joKIFK69AoLkKDnC7AVjkrAwjg=;
	h=To:Subject:From:Date:From;
	b=KXUn+xAUlw5tuv43PyPTG4QgVQcwqXxPm2uvI6j6vSxVXnAKm8CB4ut40qWe3eMU+
	 UrLS9WUpO13FPKChH6/6TtLF1W3yRz2JNyT8NJ9vT5F44wqfQAEAn2B62u7MpQ4AZm
	 ljyy0IgHrTLmYjUztokdsVk9qz5zetaXhR12RbAQClaVsdsj5e17e1sTlLadN2AN7S
	 mR0ElY45UMMPkO3y7ucZK6yxvJZaT6De6qNNARq0ggBLV9qerBR54aKZ0HjPiZC0kc
	 8P9sppTtd08kU8ud83Yt8jPTRQTlJJJcYCunkCFiLtv751rh22cw2TARjoG48gc5Tm
	 6bTc7Yy9SyUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6043C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 17:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167544396580.16391.12723318990073266124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a3e2766233e6b85010333537e0f3ab500e5c103143ae20fdffc195a9c6e53e
Date: Fri, 03 Feb 2023 17:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675443965
