Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81626AAC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F15C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663112453;
	bh=NaYhy9A/gXotMIpbnmhCV8VRaN8/9GEGtKDk+ZF8TtQ=;
	h=To:Subject:From:Date:From;
	b=LLP3BORIzCT/EwEo4Ww8wkNg3IY2ND1jhUkttpVJCN0ZbkCvCpj9nva7j/NNQN9bk
	 39LGdskyIVpFFQnVqTPUz69hih1HPQYsNE3bORrzkiTAJSnFcSDPC5r7E2d0IMjDtc
	 KrAQQeFC3qPgeDDFFxHgAhFJkqYGNvaZfeO1/aJH4ID1dJFKW6u255DEbs6tFrkORg
	 GOL1m77o+37TYX6ezXZnG9GmrHa+oKG3BfkcSGamOGSJvmhpYGiEylluhuW9+fwwCA
	 ylSPfV0l8bDQf8Aj6NVkShLXzy2xxB0LN2QE4qfWQBh89R5E6Mr5SyX8mD+FZ5gFyJ
	 ryku6hyH1izPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F45C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311245332.30189.18244461986668681934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b13cf78875bb0ea0608f5b54e4ee16473be6dd71d1604d74e16cfc8781d5c77
Date: Tue, 13 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663112453
