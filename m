Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01E91FCB
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F818C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670772687;
	bh=gBpVi3kWWQPf9iCBqOSJwS7qbJ7lddDiqjv58wFmWaU=;
	h=To:Subject:From:Date:From;
	b=nEeIhZHk43y7/lt2Bb/usXiP7E/yFkJXtFuGNxCUqzqNBwVPR0+h9/QmZvAqZohnU
	 gg59jgI4E7VILlfQObHYSVkcaRDOviVs/hoFXvCkrF/j4iXWetia5/T+LI5y6txJMx
	 a9TDxT8qUp+EeVArJdK/gyB9ZfV6NDnEmn5LXNjtb8Y71SMwDJ5xI2T3PzbZD8sqKM
	 nTvA0cKh7TeqyMdlbObNKE9vHBhUriQz6eFXS25H7Wdo81kcxG8Js6jQfekD0x9klV
	 lDrGbBTqs4IzrLg3ooIJWoMpCT4ldPEhBTESYzhQHwYU65LQNBgIzMVyotUIIXIE7F
	 rs6BIv9vCu3Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655C2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077268740.32003.10706608548638772796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e852f3768eff1efaa0d9fceaf707ac7c68a54776f07cc993ae9ed5ffe32a0f
Date: Sun, 11 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670772687
