Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B608C8E2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD95C433D9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687339988;
	bh=tUI7FO8at6WTs5bTQibHSXJ310TKtb0q21BCMdX6hu0=;
	h=To:Subject:From:Date:From;
	b=YJL3g1FfpfLxBnPYenJ15F6mgXt66jGQn9rTbt3Uspd1eMt80ym1IfCm3hsCpApEh
	 sqq0Du2sitoXyLhWigDRTJa/7oaO2rvHhCPwqLN8Wur/G/u203neXO8pmsgjvjYi5d
	 rjJMkgOVJUlzAE1IKMG90yUYzemPCZ0A0TOscLCwN2uRH2GelFqotixkDy16eiocYo
	 U3nDf6dUP9ToT+vM5LTY+Sn7Yh/bimRmkuO6LfTGZvpo+E1yo4OQIn1elwCz3iivYe
	 x8KBTv/AFuqu04NapuJkk/IqB2Quj9hqOu1h+gUTIEAE0RInqI7K/2UIySWhl6ip1K
	 Fhi0HpzYOfoAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2664EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168733998872.32008.6893335005123621578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f089fcbd605a2936627b8c13927d9f343190d6a34a00c01781810cdef76a992
Date: Wed, 21 Jun 2023 09:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687339988
