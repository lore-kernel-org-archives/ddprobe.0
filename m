Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2490612E
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECFBC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667129454;
	bh=8lCDRRfrwWok2aYwg/z/s4EMxHOLv+UsSMeKFEfg4oI=;
	h=To:Subject:From:Date:From;
	b=QRb1uvHppdwsDqjn0Y7Pm88VyN7US7dmbp34uhuIBF11UoDT/9G04sGUcY1R7NJz7
	 C3daxrPVVEcXde9WNBFv/Ul0Guc08S/1nA2q00w3C59tk+KBMcxulPUfPSAx8AGXED
	 kVQLx3q1wATqETpaVKJz7N1hrGoin+ACF7hBQKOBlpdsruwTLzHRky/OjgM/2aBFDM
	 Jw+TxEvMOB7X8RUEria2p6ObwCnKmjGpmrK19RyyyFxTM9N4rOrZHbhoArD3PYOovQ
	 i21PLBdfxE5Y07XXdbiZCvO76uDw9JpHLH/EQ3m7mHUY6n2QpgMzzY7M6zGFtGVU6B
	 LAiV136inqsWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FFDC38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166712945437.27067.3733915851677610059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87444319e359ad5befa88cc20fe81d74df856d5e2e7902f0d6dfcdee3080c4fb
Date: Sun, 30 Oct 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667129454
