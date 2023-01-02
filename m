Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF615660
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F2EC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672674687;
	bh=2xABcpVsU4pxrSe7KuPwsv0EwuWSiezCcM6YPtKXdW4=;
	h=To:Subject:From:Date:From;
	b=vEV3O9ySCSm6OjLQt2ChNhuoHIDac4DD7uJieyaUxKYisu/hOh6N5+azOz7MeOsKQ
	 h/1wZN2O+CTeg9ChCmxXZTx1yX0dwMtmjDPpjXE34zwQoj7nTKOrgPTpSwqTLPn/gu
	 yHFBo4AHcQiWJ/XjMktNFgraUjQpPfrLQO8iVN0bQAdF6voT4xL2EG+kvUHx1UziiO
	 z4hLBHiXl2rCx0tKwBYYPIutL9wFOtpHWoiCW7NjApR2FhyzA08j/Pfnnu901SE/i1
	 rRCbx4rXY4qR9nlvQAK7Yup82/0WMjCUzwWPXhkOlTjI97qxBPJRfiIc1/Yxvj7gWi
	 vGcb546pWGhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C797C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267468743.29005.12217333198855967044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0a68b9415370dc8eac078782851ef0255c10691fb5a64a4ddec9c2277c6ae2
Date: Mon, 02 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672674687
