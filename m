Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EFF185A
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ABD5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670687487;
	bh=K/2A9wcqr3U2N/kli0Q/1LUzWMYFztSPF+WC56vov0M=;
	h=To:Subject:From:Date:From;
	b=lUzmfGjCtnVQLEmmZnEfnqvuFBZS+64J8TYRqrSZ37AHhEK6O7+L9k+vbImxpkiNE
	 B1j4CcUwHfF4PEmZBLJ++w3BckM8a7K1O2HEyWv2Q0QKQpxPobBjTEg0HISsBrGcCF
	 Mz7jvXr5IUYFCqZhyY1MY/Yp27XNRVeL/porDx0QHV5fVsGnyWF2Ai249A9a3kTOcQ
	 cK+MSt7FpHP3BY27mFnJoacj3Th1AcdZ7Psqjzmt1Hc1qlXUqCC/SF+8k6yeBDofu/
	 WWZxFABkckCEoWwvlHLDVpPGnCIrO2eH/sc04gRDGuIJGLg3JpcmPKGwQ/3e1uIuwE
	 Ip7waa+DvSvww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70C47C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068748742.8337.7769488563707646567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedd1539e0a43370b01e0047cb0f3799f854ac2c40937c7e4cd0e6cfacee0ed5
Date: Sat, 10 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670687487
