Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C735112290
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7647BC433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668635454;
	bh=MwV08d2s/lPwCfrRurhdxV4dgXoXw8nh3e3CmoOvwV0=;
	h=To:Subject:From:Date:From;
	b=HrBjsZoJG1de0qOzxxpkDwfadU51TRZUPYPzvv4A6E/zHHZe/ZbU4Qae5LrappZfs
	 XDps5ynLztd0YNLSrjUuZTY14Vb93kVL16Yy/SgVa0w32j1lNE62pWu9AJ4f6cDn+g
	 gypN99tqjkcq4+YPQVChCmtgEBw4TGUMWK1GQiXsFvbAZzL2VQst1CeP/bDP4L/crX
	 D8ezZBYQM6a01Pc/I91NokuCvS6nxWVKEBtP6LoW8o1VZdak28HBeEoT7K0dFHljAW
	 b/t/KyHAV87dk5UzqM6T8VIVHJBMbUpgiMBWy80NcnB07DSjDg7WqIiaUn3eJwr0DV
	 soTgNk815QkTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F52C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863545434.18611.14286890626614367425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e855e13a7c423d809f62de67c014442d610435c3562f9321abcd5c599c357bbb
Date: Wed, 16 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668635454
