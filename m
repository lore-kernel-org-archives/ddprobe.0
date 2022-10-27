Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2791363
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740C9C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666837254;
	bh=OF7mQftAGlIVcHkXv/rQzlrXZHT2DoHKRm/iyWM3568=;
	h=To:Subject:From:Date:From;
	b=SsmQ0tWrEeVx+8D2YOuNiQPLLA+t+j4Crm3u0tafv5MSiHI81pdomUmYJRLCORIhb
	 FZpPVWVRVhlCS8iqyosREZ1tg3oOwZQWbW0qPeXLy0DzOx1HRdCNN1qG0KP/XsWQqY
	 TLSYuqcNhpA1P6ub99zrlKK7v1sc/KdPW5sFwHm+GxnoTYbsNIhXDU6Or4A+ZdJ0NY
	 V5YyT0kO+b41Eje+uSZUbRvR/czUwt4ltFefy1hy0I0+zt9SHpWTvaVu0CAh4w/bZX
	 f/V5Gq7OfBhC5fwudQvoZDEu361H9kTxK10XjdmXD6CXPFX+L85csRCO1XjaVLnjx6
	 awY8A38SP52+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AEBC38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683725433.6299.9331745640304241866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80eb28201e1a375b43a7b1b686b2611625c9acb6e1f983adc2c3f1d9b990e083
Date: Thu, 27 Oct 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666837254
