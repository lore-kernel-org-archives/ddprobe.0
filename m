Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8610612F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F65C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662757253;
	bh=IByzifP+Brs3iQDiQZwp5Yht5/9s9x5EhmM7yaGME2U=;
	h=To:Subject:From:Date:From;
	b=rE72zXyZ+az01YNCKtzzMSvrvbRK+V33Uxc8kXWMrtk2PiHKLWOwLeTY6Ph7VNrHM
	 eujF8PRPqzIXgcW4axFu3VxZLjiG0ogXAzbh3vfO9xbPdkOK4fbhyMd+vqeMyoZ0fd
	 qIK4pttPEF+j54cUlwYw214h9Rz//989SBaK84YX/Jz8uwIo/QWz+N0A6yMb1D2cY3
	 V3RcEDiaHkQ5u3Le/0HOKCc1C970lJN2SYUENpDffLhHL/RvdGYiKhv3zStW1qieE+
	 HYJW9YZbEFcRPmeZynGnvvpfykNxSTuwmACYtgXkuIBWEGtOL7cbGvkv4fWuIagxDG
	 /b5jMiZSuHpmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A28ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166275725335.19545.2453388555753854429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd333ed531e3debaf8902a104a70e3b7fe6668df47a85b03e0a143723bd778b
Date: Fri, 09 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662757253
