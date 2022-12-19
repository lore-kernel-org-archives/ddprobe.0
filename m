Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCBE79C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CEADC433F2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671484287;
	bh=VCW36Yw8DBcvWA2Fceu9qi/j7EdIfhcDEu+/oTefiME=;
	h=To:Subject:From:Date:From;
	b=NfTPAXnuzftk4lER+dKZwLNHm0+E0A1328F8SttWqWUdYzndKLBPy53n9EPC1mepC
	 COQpReEUFDoWRr3svUWGv5ve3KmCZpS7j6PCTwiHOmL+FAfKV2CXcw9x4NkQCO4XWZ
	 QL2HINTgcZqzuP+CbHoTtM+dT8E+WGyBVBdQcblSqlfQyqqihYe+YSknOy7vKy6KlJ
	 7dcU0AIMXZbmg38eZHCUmfPYFAwhymJshhxYv2ZbPuL/+rYJCGolBybIR3X3lxw4Do
	 e8FCe26y9L49BiNaV520pYVfKGJ3YL7+Nal+54eymbPX16cnAPNgLH3DKZmlTG/mdY
	 g6weYLV3rjxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E822C4167B
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148428741.4260.6624242978570771083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ebdaa5b2d652bfea79f1855bbb1e23837a8ebf5da7a1c1ade7829112659212
Date: Mon, 19 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671484287
