Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500F917DB
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2559C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679629205;
	bh=qqV8MNFM0J783ThB737JciAha7L27GC6cNR6qGn6CC0=;
	h=To:Subject:From:Date:From;
	b=RX+7EBFOTIG/ywmMIwfcEl7Xhq+csU8l2nmP9EjI9kvMKTTRLLWUNzLcg6pSQrNun
	 7HUagPtaeXqSCmADBoFI8zv8DMtpR+IBQm+BXJ2wlk7xa9OB2P71dacAL2IlcXKLtI
	 6coOPFLC0lFB2JPRD9exSRPHOcr4qVDDxvnwh6+fU06Y/iUekrSaQFMVZHbBxFMIu2
	 DDYipLckbvCq8wsUMm805ORQ/3lNerrQ/U017QkmyFnZeFyPXFISViNLrE2Z2B6luh
	 w/mB9DJgRiUloFrMbyAMF0lj9/JYjnj0zO1GSmmQQCRQbIk5egezDwifuVgVaTjLfo
	 uIuNV3YgAwtjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00EEC6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167962920577.20480.1005720082847059815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede5d3ba00fc543035c97e6172d2af126ac8d544adc171adbdb5db23ede55569
Date: Fri, 24 Mar 2023 03:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679629205
