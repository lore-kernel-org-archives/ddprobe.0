Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391427B
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 08:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA48C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 08:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677399965;
	bh=xBY9uCliih2VpH9pgBrV231j3CbZUelL4Y+eCooynR8=;
	h=To:Subject:From:Date:From;
	b=kASMK8pKCgZGG/BSqBiRAyiaCCpIkvVDjDWAjAEk6LPw7DiuluBkASvA2dTnAxdBP
	 REMun/6xWRjymTEfyTi82Q4XXeZN3Txqc7r+VVT0nxvKw5PMC1HhM9QEvsyMqr43/b
	 vTB63EGHlQk6ueISYDok3M/m5nw0h263PkmnLUJ4eo+IHuDyUNqkYpJscce0cuya35
	 p2cqs5u5CCsfDGNT2QJzSfCow0cOIykvLlKCRjBxrM6g/3MWWUZXZ3XSckNSOsOM+p
	 RIXn3CQ6ljujzhb0c5KrFtfyLrA+2taqp5p6DDgWt+kJ+caIgipFW+zsStBqriDYU7
	 RlGnI/8BZ2MWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F3FC64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 08:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167739996577.27051.11826788832258213765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f94254493cc16d84a77f049a4eef0c0358e545ca8396fd616a40aead772f7b
Date: Sun, 26 Feb 2023 08:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677399965
