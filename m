Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79D6362
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC5FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668053454;
	bh=RKKWaIodHz1+ZiSCdVvGLcei6TO15SG882Q8et26hoM=;
	h=To:Subject:From:Date:From;
	b=Cgy2ePZsrKYJ3JDoKAOPoiAWGpOc5hOVWm0XJSZOgFUs3lIIXD9iomg0uevulpsSV
	 /YBlJJxwlmt8z0U1qHm+p0HeJRG6IbMRH6vAE2YpMhJpLaXFXBf9gm5x9gp7ndQ/Fs
	 bSPyyYlsgX3zbpJ+KL0h8+YjVSgp//x/Bc27V2PrHyxKe0wWx8hNe6q1tkter2dZVf
	 qZaQQQN2rDfoi36+rz4jAsaS9CwHO4tADW9SVESDP16TD1D5MtRBSABpHPkUBTjvlR
	 nVVPWZOvBSNrSMlwFi+5C9dRgXjU57KHcEhC9Sp6sZz+PmzI6XHLJE/EzvvLgIBhew
	 zSiflfdI6+75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EDFC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805345435.28633.4573884981236701506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623237f8f559651be5f0a4e4cdc6424c7d39c905c7495c01eef37cba4aa4ff0d
Date: Thu, 10 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668053454
