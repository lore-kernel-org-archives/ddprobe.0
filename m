Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B620E23D4
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7291EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669287054;
	bh=GB/wHeKS4kyZXY1IHkH9I4U57hhqaQCjXFqCZMfxmO0=;
	h=To:Subject:From:Date:From;
	b=JHIeSnvQJTlx/ZdbJaQ9igiD4coI8ozenBfLfXDo99vD1HGbFER90b2R4E2HtBWfk
	 RES/E1Cx7DmjXN+k0u2+rH+o2Im2zraMuPjfBBqL0Z0WFcjUZbnFe/YZ4/KBaIjPm5
	 ZcZPwvn9ka4H4r+/6IXaaHC9OY5wPBlS5yD7acSJKvMj2oQlDjQ/Amdn2FuhTZUiJh
	 ZdXAETNQB5e4Kh27iJtJycefEBScwJPm+hUJab49o5bzr9rEifEDoz8tEAg7xrVap8
	 p0T43AM9pGQbyV5OWXCGtf7SI35+yTye+EEGc0Cm5Qa0APrHuwqgfbLW+14PXW23sA
	 PDvj3zdUyiw2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52755C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166928705432.19050.15204340312439335247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d678774aad46febc86ca8115533685bcf9a874e8b9a8ab4418184f48ce06d9
Date: Thu, 24 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669287054
