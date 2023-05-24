Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4424119E4C
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 16:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76ADC433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 16:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684944905;
	bh=JjIH8Q36S1EspKP+cwnDp5BaGj976YG9N/bzIkEj++c=;
	h=To:Subject:From:Date:From;
	b=B14ZWCLdkxGidXq8o289YaN3uXqWywMKzJp+kIvWu9Rc92+4ySiiLPyMt+XjyTkg9
	 ModzE6THDRKyxfmV3F+6vefKKhmNRr+v7RMsu5h3xeVPYoOVmQDGhU3C8o8yc7mb+F
	 xs3PRVuWbt6BRT7NoEMDPBjGReAqEwc36FuG+d509aJwQRPo2Oc6wAkl7MsXxoPZhN
	 IV/NN5VJTj8rlvMvTu/wMiuvzhuqOWMi2Lrb5AwMM6HohbIMKA72KaRY6PG7B9gNuD
	 dafTXDoMvBc315BPfghIeSSTkBDknOb/bslpcgdxIIm9waYTa2q4KcqkTBglF6c5GA
	 W3dnarJtrqyGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AC2C77B73
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 16:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168494490579.32084.99372514615463929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e16d298fb0f5d2e05331729442964beb96cf50e87de4a446fc5643af5b3f0a
Date: Wed, 24 May 2023 16:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684944905
