Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4930E28F5
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 14:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA503C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 14:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682002625;
	bh=UCT0IfvsAPpEh67YgT6+k2OsP3RGpCf9UblP9ZAFmPI=;
	h=To:Subject:From:Date:From;
	b=pvarxP+HutWjrdfiUVFcBxlshVwu7w0ZSI/kLpaAVFF/iCK3cQbVu6Zq8nsSGyrLn
	 +E7WK17J+5AgeiHM3SLLt/pi4OQ2LCUnMe5cMNm3d3IhXQSm7tnqfanjWfV/Y5XHsd
	 tJDRdPRcpo3ctXOVQVtX3GC4dMksij275letnNIGO/NLr9vK/p1WsO5e68nDGrzLqA
	 GJpuZ1sA/UF94ziqZTZLW6ms3QF9fttco9rsJfgksMf0kq0Y1RulAO75HHeigLRaMa
	 ld9fv4pBQQRhBM7/+HLrHNapkoy+aUY6ZJJouObdYjOr01y8QrHRaZ5/CoAp7WnbMQ
	 kUOvtsVJ4nS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A08C77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 14:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168200262579.9167.9609822621491040558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d90f2e8030d10315e886f41e45589356850513b42a76bfa18455a575183c07b
Date: Thu, 20 Apr 2023 14:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682002625
