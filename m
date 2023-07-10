Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626CD210C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA22C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688966828;
	bh=bPbyfNyLsQPQRQKGe2AL5aLiYhAGjD8OxPJ24QQFous=;
	h=To:Subject:From:Date:From;
	b=Rci0qORVs0P2R1IKUcTxE8dCsGNLb2Uc6+xDpsx3dRaIjveJ+7Xe/+GD0bNAoRi+d
	 pNKITiF5+lSE8MP8Admg8H75NK0cWzW6P/YdOEVbjIFABD/M+XmoaARZsE78Lb58dO
	 6R6cWleSIT8O7YqJEjnPxgwnDAIO3g6GzEbEkhm2jfrhqOl1drDMEJ146lTN+fz4n6
	 Ls1lfkJpCSyLe1ls99d0sTpdoMd2T7Z8nqRgZPVUeHqYA6BLvNH+8TZI/GwDOGS+Gi
	 cAKWr7EYab3zO7SdLLE3M57EqbuNJjRvQi5nX8SXOcOp2PA35Qup89o40vOtsgUxN7
	 bc2KWThGuBxqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E98EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168896682868.18116.11336246289830558520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989d1ab93bc479e0f0c8bcecb727682c48c996d16b11d5bfd0cbe08c03f73e05
Date: Mon, 10 Jul 2023 05:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688966828
