Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF8E259B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E99AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669369854;
	bh=0iw3fFomKGLxpN7msFLGSLXfT4yHOtmRHtDzv3DI8vc=;
	h=To:Subject:From:Date:From;
	b=B5Oizjx6YLbOJmsBafkWSoWqIujsSjoCNQPa5dRKEQGNzCrMWzBQVrQKePpfDQTNg
	 tIKtqrabk57p/jlVeiUX60TlvI/sEJVgJ+sNMsD1KgobNAtRrroA67XKuMKQlmS6+s
	 A/5+bWwmYjtsdFzBXAzr0/j9ymVCsLhgH22DYhLCeb6jSvxKVLm6Y+g/C/6BHY1muS
	 mkeJRxn8kvhz17qOVmXjysJbqlWvai/sbeYI3+IAbdpJ5aLqT7wkWUrj+nHSLIICMx
	 RYENpYPJ0Eu9U1lAL/Jgu4wVKc6ULzZcdbotZ3+5b/Qhld8RmVroF4Cp3irvBUYIY/
	 bwhPFumwfSqQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A23C4321E
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936985431.24044.15329012744052407353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d299b5aff48c37ab1f9789adfbe9dde03aef7fd5c1618f5ceb15fde6023993
Date: Fri, 25 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669369854
