Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE5D20FD
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F02DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668012054;
	bh=XLHz8k60coEOH8tARwXIVm3PHqpdFIpTPnAK8Ps1Z8s=;
	h=To:Subject:From:Date:From;
	b=RonUx4X/DMLLTNquRFtyvSQrzdF6rXUBUC3YVq22z0OXOW2bDE0fUv6I7sKTJ5ckS
	 lD3MUgFQCJn0s87F3OcahS7dEIvtrXfmXdyIBgv+523OAkAcYKdfavsD5c1pqvMIYC
	 XQ2X/FWHn/ss2+Btk86oSSjv7hoQhEa9cLbXuON2m+LybzClTTrJumvABbuFhuHTwL
	 xmh2hVRGAZIpJzqOZtEK7sKFHlXKVGb8o3TJtsIzR0CbNz0h+ZmMW4QSkFPZx/1OYA
	 zcHb6Eo2jBhzg1eglRxyYKvt6cLqfo2ka5PcpeCH62rWF01nv1iPoLCT0cQpwCwoGs
	 lyxeIx8npUrww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC30C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166801205438.10630.18186645577905949508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27db8267e847f48d331a2e1153c6cd4b1406ffe0407fc11898e138844ea1d8b3
Date: Wed, 09 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668012054
