Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E506F7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D6DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669518654;
	bh=0b3eSB/bS2MtI39VXz0vpOdKuVexxg7ix2yRTytDJt0=;
	h=To:Subject:From:Date:From;
	b=KZuBJE/hq74kxJjhsGWZA/CKdt3ZMC18EBvegnsrj6CME6/Mu5AcDcEFo4oaLm3on
	 kwO18FpC/wzP2BE39+rwxI0FKhN+P8R0yc2PVcxm2zEiTJSeIzACGhe6iBF3QmoYkd
	 FAA/bA7JuDxaezgz3rN6tmesI4mh8NsjaRgK4+rs4ui32Xtm1Md7stfEvK2jtngmph
	 sl0/1FFk9wQG0K0WppJg9/sN8R3mByEzzvK0K++S+Ku7czgULU0tftGBPpyF+f4IF2
	 ffA3TZ8fjKg5ao7uPyyrcdPbICwZweD0SDEHNN/7g5RHcE/MLrrYUM4Z22qkNOOS4j
	 MqEAI+UoHd5XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63901C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951865436.7490.13039339266561663215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24ed9fda03bf3488b3216b8723fa0691143d2db4e9d96eeda49548416e708e3
Date: Sun, 27 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669518654
