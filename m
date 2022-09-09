Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C33612F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67C7CC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662752453;
	bh=fNI4WWe/7qXmIdo4CdTp5Yc/TFs32iUFvWQRpujqTAA=;
	h=To:Subject:From:Date:From;
	b=GP9Uug4ObrvWF3cLey2IXRxYA9c3Sqh9JpAgtQrg+biaU+wM1uECIMxjcTWcTiCBC
	 licWBiz9J7LboewyVVWjcaiS5kh6kDuhVMZyjGrFPX8IlF4splhl496dg80854cecT
	 Bv3yRKi7yWjIkPs3uxfFsq/dU5b9ZnbidYwpQychZBXuYs0g6IDyl9MqiEfRuC4ZRC
	 Jbdcy13yo2qrZSA9Zx7V0dStaQUo0tQ+vjv04HZ6r6W0ZMQXsT5JQFL+C1VcLaLu00
	 vsg09e5BXx5C9cYa0Z8JUXo1Ebm9Fl0upXAR67xiZurcy9T8QSm8R3QhkDI/WG8n5Z
	 HuL4FqWIrxOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D5CECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166275245332.7188.7999359982481433726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a7171cf28596a89165f2e79f3fb7980fea1aa0c823d54ed6f069118428ec8f
Date: Fri, 09 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662752453
