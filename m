Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2BAFC1
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 23:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CAEC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 23:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680047705;
	bh=FHpZO6ny4BfwMKaHFNaKLPdfH101Qg/KOOmJx0ailYI=;
	h=To:Subject:From:Date:From;
	b=Vya4UVHr+0MdTDt6p2ElSDu3NJmZco2HjifQL5tQ4c7UfFAEToU6JUjrgBWp4B3Xc
	 KyuR1fTET8DDurQY4Fl7+kuNZkVUNoGtxB7rCk1isH3znevPdnKsOZ+Pjs9tcuVgnE
	 ymRhDubHIN2/eHvsNIvJdkj0xeLYI3E564cT3dg4W2wE+P4fbSxfuEqOFUsXy6CQN6
	 21A9fQ2W944VbrB/oGsYw+G+ME8vRZj0T+nLdZf3nJIaYHA9dRpcRzDqGv/8iWrzQw
	 Jw/KJcsasL9ilbcDYjvP1iW91QXIfxKP1xSmgjq9p994kcdw7wS/6+xfBq6hHaBZPR
	 72Zf4IbPwQrmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9933C76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 23:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168004770579.2825.17146271664464080013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75300daa0525d18d76fbe4605a1c8bfa839aad9c133115de9a4df163aeb0923
Date: Tue, 28 Mar 2023 23:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680047705
