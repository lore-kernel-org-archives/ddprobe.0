Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C55EA3
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 11:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE467C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 11:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679917385;
	bh=U0g7OeNNHGjZ341IId4Exo8rruuK3/xkOpbUrMBVV54=;
	h=To:Subject:From:Date:From;
	b=o+L7lRirDDiubaJPntFLvD6jkDHllSvoUgevJnL8aw5cqa16nojHhY94NdTNyyh2c
	 wR9qleHB5iTotqDR7QVu25S17EbZZO6c86cqN/1TO4EKyGRNOp1FlTcxS9UCd0JJam
	 424fY/X1sSF+tFMAGVwkPEiAE/V26G2VDAvdI3M+ZIuzKXEk4iyRwHPB0wZcPEgRQ4
	 iQHJWZmHh/vF2MXXq9FFNn17YbvZI8KwiqVCTVhdrYcOq3kfuM+a4vGEzK3W0jAyNE
	 QaWpHZo5UQ6lwPi4i+0ZyB0A6lCVbQLBhg9Aza+jTl4vntyM5GCYdFpPwr41k9XaZU
	 zyN1bo1Gcz6jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2878C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 11:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167991738572.5406.6974001570644679105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc182920948335a12f0da04689d7d2484980942648064c539db3d2714293fd7
Date: Mon, 27 Mar 2023 11:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679917385
