Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789CDDDC2
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FBBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689981128;
	bh=se9QtsD39Wq4ICxObmU6UeuKjhnUNEpkIejE1UNyOmA=;
	h=To:Subject:From:Date:From;
	b=GuvcPG6oMi6EETpc61+E3PmPCT0d5KZXi4uOgvJWq8jNy2+6rJvLLbVoo2aEJszXx
	 ykZFBantBIz2jXhE+KJKy1w+WXPOfkW8gkB7AESVeYb3QLTH6wBPgoLxXesVkl/N9K
	 4rQq/n3ALNN6bMVBRB5QmUu0HMLFFFLwsLWEEg+CNe3HjZvDTX6rx3q47wbO43j+uW
	 3gwFIiRQ63YTSrz2cSLHRu1SZA0EOn4ut4IlfgjP2SJu///PEFZ9KetJ5QSLYfmVii
	 SCgn9BVklVuzLnj1nGgskSzZ4qSQRjxDAzet54XNzD21XXR+XBsIHoivLLoEokA6xn
	 Ci40/LB9dqP5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80FCEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998112866.14748.14150046193999407594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5714a1de73493afd00339f205c76c1e47ad2972997ae18e807bd45d91f4ee359
Date: Fri, 21 Jul 2023 23:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689981128
