Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B193910E5
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8F3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666866654;
	bh=wQ4wFtz+jW11lfOiMi8Zf3GrqfEaRzQTx9ixdUYFxm8=;
	h=To:Subject:From:Date:From;
	b=pgrQHOA6kPGWnBGFFQ8vtFMKSGwNjR4S1cUX6EAVRxicvIg9+UymRgEz4qpiqQrF4
	 vSFbP+2todasv5H4+VvoJDbE0TTizljIUvFM2LcIkyhc/63FlR437q1NQq/UOeoRaW
	 oZSfNIhjP2nveLGKP+la27Wo9za5Jp+5uk/WXQmtPWx26ui3AKGP0G4YkD1rQ/8bam
	 yrajuO2kIZygKW/i+jA8ZItu+M0XZqiQnXaUlSd5wShYoy2MSsgIiXArH9EoxbTid7
	 868W7DJ0+ot2x3zhvlmBwWN+X5XAVYPKmsvewtCV9SDL/LT39+7P3+qvAKoAOjr12N
	 HHBSAcNDK84ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56436C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686665434.15968.17148563065865829272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d269bf71d621ddbf5bdd597b667651b95da8950bdfe048e4630354492ec36ae
Date: Thu, 27 Oct 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666866654
