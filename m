Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAC028EB
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D299C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664634053;
	bh=u6yS4vtldY237NvKOnnA8O6Ez63jdvzAJi+2wS6g9Ww=;
	h=To:Subject:From:Date:From;
	b=auc/8iUiycbg/XqmCOYXGJVRQSXgyvZzdG9E9D3eFA4DVfyte3wHYSgVhpkZPacHM
	 F7X+pNK8Qg+YmiuUB71KOnJ++Sq54h230CkJvQAvuLloCSixK6Bp92xgR/0pbh7mCE
	 8vv1mY/CdwbL9/ytlHYAbGGv9jh5co5KGpnH/jgZPHu/DA4SoS/ZkjrFpQ6M+Y/Sz4
	 a6REPgljNMrCryM8zG0F1n8DkGCEv/BOJCHi61djc0a03buPUhEF0LjQZ09YEasEmT
	 P9Mq5SZ3CmY+i+PqbOaC1DStx3i+xoEciQmaDq4HdKvmBj2EUYhNxSz8MjUvAZsohE
	 VXsOFk9Tnqnaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514DBC433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166463405332.10552.6111378759136052675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c2ef9ddde1494ca0787687f8696c4743727b8a6b2b8a060451a3ff1591ba0b
Date: Sat, 01 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664634053
