Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F5223A4
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02CCDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682753706;
	bh=M5yZmwSKG9oUi4xhSHBg4XWiAY/E7+pl2kFRxZrjztc=;
	h=To:Subject:From:Date:From;
	b=rszjlDx2u271nDRYJFJMud3HjfVj1++qO/Gh7Tu9OJuEKyZpnofifLul0SS8BWTqF
	 6lvDjVjYhwp5/YBqPW5+7f+eGlQr1gq07nbbNwVN7CWxDfY+0TcQvNBg3YSFX5oyBB
	 I8gCbuyl3x/56wcbP/e64uCjlt9uJFoT8aMJggryRkHIMszXh4+nxzG6BDO6K03FPe
	 61lRai/G3yhCeT08RQZeJfOq08skOHOfGSjjH+eNuKUrC4Dr62D1T1T6ocFmSm9kT7
	 hVpa2usQ9ZwyD6M5qSTykrnpnpwY8zw2muK17PDgWnfga8fSepKV7ftJvJ0Pfvdnc+
	 nEGW68hpz4FIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB5FCC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 07:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168275370579.15198.14912680380213753922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc2b9aea84a0257c58497281e9139e5972365afdc85bca3f352de5895492f54
Date: Sat, 29 Apr 2023 07:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682753705
