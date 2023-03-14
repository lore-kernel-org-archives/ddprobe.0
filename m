Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42480180
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8BDC4339B
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678754225;
	bh=9pOSOSt/nLclpflD/7GvpVhI8ZFoiKSPDsqxNEz87jo=;
	h=To:Subject:From:Date:From;
	b=FeV4La/6PUt5mncP2qdf7pISNHX1Nb9pBNn+oVjiktRRSi9apcAyroZRbwSXwkmUB
	 dyGxelQt4wxeHoQ+O2dxv0xt/pjUqEZA3SLLBR1Low1qZJV+bIOvwq72+eL4F7fgpU
	 CUYVlbfA+/mlH3Ka0ZurifUAwd4bfCmYgi81GLlf1RTkHM3otArb0JKRqKRuIC1vKU
	 Qb8tlGKhT8xtMxMRnJrkL/6t34dLHujvVDiMUM3wtC58Himv+zNiAC+lI1O19g7mJU
	 Ghs4VVvTkDHHJ9yZfJ00xwwnoUYOahCzGtkgpFxZFnDy/3u09zrq4Em8DaFMywCBFk
	 96//SovZ0dllg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14A7C6FD19
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167875422577.6820.14275793820188109096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7c8f4973bf6cdfc6ca43fb83a06c094efd633bc935ffc9b8a9aeb1a36d79cd
Date: Tue, 14 Mar 2023 00:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678754225
