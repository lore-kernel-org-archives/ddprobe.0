Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F60803
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3C1C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665892253;
	bh=2TehK70/TJe7m1d/qYSorq7sZeMhg1MZWxXFAGvXPvc=;
	h=To:Subject:From:Date:From;
	b=ikE/qmavVF0WrCuA9fSBfvBDG0FnHqBSKyPkqT4gEhprgav2jP/VVo3S2xoI7YI3R
	 cDqTmRHymmOfHLcM2fb5+XT11FgtuyFIAFQbeLIV3AapaFhAz6cl/SRb/iExNCUQ/o
	 84ff6uzhDCPQ7ma+9LTWeWtG4bKn9L02Qx792CAO24UVdedFZz3Ou66IDRA649u1Te
	 9Md7tcWLkrGr5phlTX1LE7XS1qTZK0YDi4brbuHlnaHuFqm8ezJUD0NGl/7JvIWnUi
	 DuoSb9xXkOJ1JBsqgcz+WxCMuEYcJyjRZlko21sEk9gQfZaiO3eyYI9oVW+j08jWPz
	 aJvR2dfenMc/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B411C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589225336.3642.17637890411515711153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52561c43a46ae07a9d1e286751dfe0e194998657a503a53420839311bd939d0
Date: Sun, 16 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665892253
