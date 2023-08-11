Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528E87475
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 11:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3109C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691751788;
	bh=2otFjjQNtf2BlrkXRuNbFTIaAX2CfReueXshsBzeFXc=;
	h=To:Subject:From:Date:From;
	b=gLAQL3AOg2kQKdvGcuAb1ywckxYzuKCtYdfOSGT2IFspMBr+s3Q94VJAGROTcmDGl
	 Nyrxdn5Nl9p34nGtzQ1kdvs1wWdcn5tcpxLGTEk+OJJ7CAjgEl/+amZuNtGpuL0wbn
	 6Zf/Sk0uEEdU0zRHcsx1QWd4FBoALU0A0NMl5GzrrYY3V6BqD2Wo/J7ySLwf3MB4R3
	 HjVqvbFkSWVRQ1k2NmOZjBpgxc0lEM4Hycn9HduizB0OUrODE8o1xAZnQ5X9Ud8xXx
	 cici2qrGX2zWruMM4ImbOMTCHMUgwnbbJnthbEN4IBKp93kMFqXDYrooEzcN84RINa
	 CYK45OB+u3VKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB12C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169175178870.21496.9808037972614905013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaae48bfcc497322b173f582c817a146c280ba4936294f46cbf5b26b3c0391ef
Date: Fri, 11 Aug 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691751788
