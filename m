Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1128CBA31
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEary27b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 894F1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703958496;
	bh=Jx+9e8a4/3OCeD3D4BTaO+WqQ0EhKoOO7jsqnF3Jbh8=;
	h=To:Subject:From:Date:From;
	b=JEary27bUdOd4oWh1KYGK1bs7rTfCwcj9mWUidJX3h0lu1sEKIzTGD+z6C+2PhWSW
	 6TJ9V12vnOyjLN6WOtD0pRbdPXtFc3iVuWtdPw57o70CsRkxZnMxYTxMdhlWEGLDpy
	 kcr+n07i2LjnHsLNbRo3OBzGqCVvi70xMP4zwPqYiuufydF16Suqm4m/V4Aevv/+fJ
	 c4U4vfdm/cF/eQT2vtHurpxszEPBvwWuMT1dGg7ONRNDofzXgGHQk09ARqrOfAKQax
	 E/qQxC3ZFEutSQ8T6dXPfFOdBm3YEihf1zqw8TGLUy0+rF2fgmDkDh3JHETxHa/bhA
	 8q8iZZYb1L0aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4D1C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170395849642.15972.18354719539581082450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d064f835d66796326ecf62729fde4f89d77b9a3bb58e7870de7a52465375f2b5
Date: Sat, 30 Dec 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703958496
