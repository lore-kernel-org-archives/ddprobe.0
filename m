Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A03BDDD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 19:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8FAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 19:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695585308;
	bh=Ni1t9Kf1JtMT8CDwhmbPXM5qxWDFxUMbH1o4e5MNK5g=;
	h=To:Subject:From:Date:From;
	b=u+jSsr9rRMEKEQQjmbpc8NhBWylls5erD5b7Pzz+AK9iPV6wO+7uJWKL7+XbYdp7L
	 1wRl+o/60O4ayJqIqpT6n7TIJeOhzUZM40mDi3Pn5ej/IGkNJeRgPoShRV9HId5iwT
	 p+frvsBUbTgLAgYnZRGz9ikrNNEPPKn5n9iyH6LDqK4oFx/AjhQTIB33Uorkll2Wyp
	 zzgkHa2/Rf2yFM78rDjwhWBg3k5ogy1qUc2n99Mbsl26oeWpBNmQKKm5l3qltwmCzx
	 6MuK8YA7tluTc4c0+MF0XR19aDFuEQff2vcLx52LvBOnjCr9euWC7noKYarQVXARe8
	 6ycCg9aJhtaBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFABDCE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 19:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169558530871.29187.9488215456635862384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deecd4e4f803ff2f38fceda847caec0791ca49736b4c2cbd2945178566a6381e
Date: Sun, 24 Sep 2023 19:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695585308
