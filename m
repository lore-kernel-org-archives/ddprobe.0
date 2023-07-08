Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E2E79EB
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A2AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688839028;
	bh=H5uOywzV98vrhGMRrU2k5af05j6/IcO4pBNGXlRKMLE=;
	h=To:Subject:From:Date:From;
	b=ZoAaD+8lpZQikEjlzmQlzorHYeButcQ3UtfzyGoa4xVQCQ2Q1XoZ1L/pwnq9CVwZY
	 ylXw24cfz7u/kkcl8hkfiQIV0XyeviTorb3EtN4X0JnG+p60bOBAtsOUiRBUsM1vf7
	 CGNv+sAOynQewHV5mlTR9cC+ibY4vq8hxiKLcuYHZiuRGmKmCrh98jGH+ttSUT6iUF
	 p7GkBD/Yi48RqBbgP2KPK4+vdDzATWyCtMtaCEOE5cVkUs4+3VygfEn3MqRA1jhq+y
	 QT6OBsGK/7a5ZorG0K3fXXB8FAW+x03bcCMa26adw/Lt7TIj6PuRpEC+bwQk6ROYuR
	 7SoGN9scJBWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA707EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883902865.13706.15929653519722548992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5928dc1ed263a6ae5b7813ae5d2899bf7f3aa5ee40b53ae42e20f8cbad23d88c
Date: Sat, 08 Jul 2023 17:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688839028
